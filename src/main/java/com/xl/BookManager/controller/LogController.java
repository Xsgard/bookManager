package com.xl.BookManager.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.xl.BookManager.entity.RequestLog;
import com.xl.BookManager.service.RequestLogService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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

    /**
     * 查看日志
     * @param model
     * @param page
     * @return
     */
    @RequestMapping("/toLog")
    public String toLog(Model model, @RequestParam(defaultValue = "1", value = "page") Integer page) {
        List<RequestLog> logList = logService.list();
        int pageSize = 15;
        int totalPages = (int) Math.ceil((double) logList.size() / pageSize);
        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, logList.size());

        List<RequestLog> pageList = logList.subList(startIndex, endIndex);

        model.addAttribute("Log_List", pageList);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("currentPage", page);
        model.addAttribute("requestPath", "/log/toLog");
        return "log/list";
    }

    /**
     * 删除日志
     * @param ids
     * @return
     */
    @RequestMapping(value = "/deleteSelect.do", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    @Transactional
    public String deleteByIdArr(@RequestBody List<Integer> ids) {
        boolean flag = logService.removeByIds(ids);
        if (flag) {
            return "删除成功！";
        } else
            return "删除失败！";
    }

    /**
     *查找日志
     * @param keyWord
     * @param model
     * @param page
     * @return
     */
    @RequestMapping(value = "/search.do")
    public String search(@RequestParam(value = "search", defaultValue = "") String keyWord, Model model,
                         @RequestParam(defaultValue = "1", value = "page") Integer page) {
        LambdaQueryWrapper<RequestLog> queryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotEmpty(keyWord.trim())) {
            queryWrapper.like(RequestLog::getRequester, keyWord)
                    .or(wrapper -> wrapper.like(RequestLog::getRequestUri, keyWord));
        } else
            return "redirect:toLog";
        List<RequestLog> logList = logService.list(queryWrapper);
        model.addAttribute("Log_List", logList);
        return "log/search";
    }

}
