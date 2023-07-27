package com.xl.BookManager.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import com.xl.BookManager.entity.Book;
import com.xl.BookManager.mapper.BookMapper;
import com.xl.BookManager.service.BookService;
import org.springframework.stereotype.Service;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/27 14:08
 */
@Service
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements BookService {
}
