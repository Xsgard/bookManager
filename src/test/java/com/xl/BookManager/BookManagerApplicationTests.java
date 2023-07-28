package com.xl.BookManager;

import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;
import java.util.UUID;

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

    @Test
    void testUUid() {
        String uuid = UUID.randomUUID().toString();
        String substring = uuid.substring(uuid.lastIndexOf("-"));
        substring = substring.replaceFirst("-", " ").trim();
        System.out.println(substring);
    }

    @Test
    void applicationTest() {
        ApplicationHome home = new ApplicationHome();
        File source = home.getSource();
        System.out.println(source);
    }

}
