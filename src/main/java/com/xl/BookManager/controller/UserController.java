package com.xl.BookManager.controller;

import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/27 14:26
 */
@RestController
@RequestMapping("/user")
public class UserController {
    private UserService userService;

    @Autowired
    public void setApplicationContext(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/login")
    public void login(User user) {

    }
}
