package com.xl.BookManager.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import com.xl.BookManager.mapper.UserMapper;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Asgard
 * @version 1.0
 * @description: BookService的实现类，继承了mybatis-flex的ServiceImpl，实现了自定义的UserService
 * @date 2023/7/27 14:14
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    private UserMapper userMapper;

    @Autowired
    private void setApplicationContext(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public Boolean login(String name, String password) {
        LambdaQueryWrapper<User> qw = new LambdaQueryWrapper<>();
        qw.eq(StringUtils.isEmpty(name), User::getUserName, name);

        return false;
    }
}
