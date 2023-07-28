package com.xl.BookManager.controller;

import com.xl.BookManager.entity.Book;
import com.xl.BookManager.service.BookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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
    private String COVER_PATH = "/static/images/book_cover_img";
    private BookService bookService;

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

    @RequestMapping(value = "/add.do", method = RequestMethod.POST)
    public String add() {

        return null;
    }

    /**
     * 上传方法
     *
     * @param image
     * @return
     */
    public String upLoad(MultipartFile image) {
        String fileName = String.valueOf(UUID.randomUUID());
        String original = image.getOriginalFilename();
        String suffix = null;
        if (original != null) {
            suffix = original.substring(original.lastIndexOf("."));
        }
        fileName += suffix;

        try {
            File filePath = new File(COVER_PATH);
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



