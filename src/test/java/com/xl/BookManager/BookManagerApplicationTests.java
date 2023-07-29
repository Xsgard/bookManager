package com.xl.BookManager;

import com.xl.BookManager.entity.RequestLog;
import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.RequestLogService;
import com.xl.BookManager.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.UUID;

@SpringBootTest
class BookManagerApplicationTests {
    @Autowired
    private UserService userService;

    @Autowired
    private RequestLogService logService;

    private

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
        RequestLog requestLog = new RequestLog();
        requestLog.setRequester("12321");
        requestLog.setRequestUri("www.baidu.com");

        logService.save(requestLog);
    }

}
