package com.xl.BookManager.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.xl.BookManager.entity.Book;
import com.xl.BookManager.entity.R;
import com.xl.BookManager.service.BookService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import java.util.function.Consumer;

/**
 * @author Asgard
 * @version 1.0
 * @description: 处理‘/book’请求
 * @date 2023/7/28 9:42
 */
@Controller
@RequestMapping("/book")
@Slf4j
public class BookController {
    private final String COVER_PATH = "/static/images/book_cover_img";
    private BookService bookService;

    //注入service
    @Autowired
    public void setApplicationContext(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<Book> list = bookService.list();
        model.addAttribute("BOOK_LIST", list);
        return "book/list";
    }

    /**
     * 根据id删除单个
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete.do")
    @ResponseBody
    public String deleteById(Integer id) {
        boolean b = bookService.removeById(id);
        if (b) {
            return "删除成功！";
        } else {
            return "删除失败！";
        }

    }

    @RequestMapping(value = "/add.do", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public R add(@Valid Book book, BindingResult bindingResult,
                 @RequestParam("coverUrlFile") MultipartFile image) {
        if (bindingResult.hasErrors()) {
            List<FieldError> fieldErrors = bindingResult.getFieldErrors();
            for (FieldError fe :
                    fieldErrors) {
                System.out.println(fe.getField() + " ===> " + fe.getDefaultMessage());
            }
            return new R("failure", fieldErrors);
        } else {
            if (image != null) {
                //上传封面--返回值：生成的图片名
                String fileName = upLoad(image);
                book.setCoverUrl(fileName);
            }
            bookService.save(book);
            return new R("success", book);
        }
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "/deleteSelect.do", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public String deleteByIdArr(@RequestBody List<Integer> ids) {
        boolean flag = bookService.removeByIds(ids);
        if (flag) {
            return "删除成功！";
        } else
            return "删除失败！";
    }

    /**
     * 获取图书信息以展示在修改页
     *
     * @param id
     * @return
     */
    @RequestMapping("/toUpdate.do")
    @ResponseBody
    public Object getById(Integer id) {
        Book book = bookService.getById(id);
        return book;
    }

    /**
     * 修改图书信息
     *
     * @param book
     * @return
     */
    @Transactional
    @ResponseBody
    @RequestMapping(value = "/update.do", method = RequestMethod.POST, produces = "application/json")
    public R update(Book book, @RequestParam("coverUrlFile") MultipartFile file, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            //说明验证没有通过，则把错误绑定前端的页面
            final List<FieldError> fieldErrors = bindingResult.getFieldErrors();
            for (FieldError fe : fieldErrors) {
                System.out.println(fe.getField() + " ==> " + fe.getDefaultMessage());
            }
            return new R("failure", fieldErrors);
        } else {
            if (file.getOriginalFilename() != null && !file.getOriginalFilename().trim().isEmpty()) {
                String newCover = upLoad(file);
                book.setCoverUrl(newCover);
            }
            bookService.updateById(book);
            return new R("success", book);
        }
    }

    @RequestMapping(value = "/search.do", method = RequestMethod.GET)
    public String search(@RequestParam("search") String keyWord, Model model) {
        LambdaQueryWrapper<Book> queryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotEmpty(keyWord)) {
            queryWrapper.like(Book::getName, keyWord)
                    .or(wrapper -> wrapper.like(Book::getAuthor, keyWord))
                    .or(wrapper -> wrapper.like(Book::getPublisher, keyWord));
        }
        List<Book> list = bookService.list(queryWrapper);
        model.addAttribute("BOOK_LIST", list);
        return "book/list";
    }

    /**
     * 上传方法
     */
    public String upLoad(MultipartFile image) {
        //
        String fileName = String.valueOf(UUID.randomUUID());
        //
        String original = image.getOriginalFilename();
        String suffix = null;
        if (original != null) {
            suffix = original.substring(original.lastIndexOf("."));
        }
        fileName += suffix;

        try {
            ApplicationHome home = new ApplicationHome(getClass());
            File source = home.getDir();
            File filePath = new File(source, COVER_PATH);
            if (!filePath.exists()) {
                filePath.mkdirs();
            }
            log.info("图片上传位置:{}; 图片名:{}", filePath, fileName);
            image.transferTo(new File(filePath, fileName));

        } catch (IOException e) {
            log.error("上传失败", e);
            throw new RuntimeException(e);
        }
        return fileName;
    }
}



