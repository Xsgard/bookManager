package com.xl.BookManager;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class BookManagerApplication {

    public static void main(String[] args) {
        log.info("项目启动成功！");
        SpringApplication.run(BookManagerApplication.class, args);
    }

}
