package com.xl.BookManager.controller;

import com.xl.BookManager.entity.Book;
import com.xl.BookManager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author Asgard
 * @version 1.0
 * @description: ‘
 * @date 2023/7/28 9:42
 */
@Controller
@RequestMapping("/book")
public class BookController {
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

    public String upLoad(MultipartFile file) {

        return null;
    }
}
