package com.xl.BookManager.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xl.BookManager.entity.User;

public interface UserService extends IService<User> {
    Boolean login(String name, String password);
}
