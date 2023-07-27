package com.xl.BookManager.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import com.xl.BookManager.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
 * @author Asgard
 * @version 1.0
 * @description: BookService的实现类，继承了mybatis-flex的ServiceImpl，实现了自定义的UserService
 * @date 2023/7/27 14:14
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
