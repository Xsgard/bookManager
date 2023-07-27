package com.xl.BookManager;

import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BookManagerApplicationTests {
    @Autowired
    private UserService userService;

    @Test
    void contextLoads() {
    }

    @Test
    void readTest() {
        User byId = userService.getById(12);
        System.out.println(byId);
    }

}
