package com.xl.BookManager.controller;

import com.xl.BookManager.entity.RequestLog;
import com.xl.BookManager.service.RequestLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/29 15:42
 */
@Controller
@RequestMapping("/log")
@Slf4j
public class LogController {
    private RequestLogService logService;

    //注入service
    @Autowired
    public void setApplicationContext(RequestLogService logService) {
        this.logService = logService;
    }

    @RequestMapping("/toLog")
    public String toLog(Model model) {
        List<RequestLog> list = logService.list();
//        List<RequestLog> newList = list.stream().map((item) -> {
//        }).collect(Collectors.toList());
        model.addAttribute("Log_List", list);
        return "log/list";
    }
}
