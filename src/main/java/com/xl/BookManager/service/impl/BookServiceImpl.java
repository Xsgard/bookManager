package com.xl.BookManager.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xl.BookManager.entity.Book;
import com.xl.BookManager.mapper.BookMapper;
import com.xl.BookManager.mapper.UserMapper;
import com.xl.BookManager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Asgard
 * @version 1.0
 * @description: BookService的实现类，继承了mybatis-flex的ServiceImpl，实现了自定义的BookService
 * @date 2023/7/27 14:08
 */
@Service
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements BookService {
    private BookMapper BookMapper;

    @Autowired
    private void setApplicationContext(BookMapper BookMapper) {
        this.BookMapper = BookMapper;
    }
}
