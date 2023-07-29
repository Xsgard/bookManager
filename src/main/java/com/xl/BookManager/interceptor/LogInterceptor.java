package com.xl.BookManager.interceptor;

import com.xl.BookManager.entity.RequestLog;
import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.RequestLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/29 13:15
 */
@Slf4j
@Component
public class LogInterceptor implements HandlerInterceptor {
    @Autowired
    private RequestLogService service;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User loginUser = (User) request.getSession().getAttribute("LOGIN_USER");
        String requester = null;
        if (loginUser == null) {
            requester = "未登录";
        } else
            requester = loginUser.getUserName();

        String requestURI = request.getRequestURI();
        long startTime = System.currentTimeMillis();
        request.setAttribute("startTime", startTime);
        request.setAttribute("requester", requester);
        request.setAttribute("requestURI", requestURI);

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        RequestLog requestLog = new RequestLog();
        Long startTime = (Long) request.getAttribute("startTime");
        String requester = (String) request.getAttribute("requester");
        String requestURI = (String) request.getAttribute("requestURI");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(startTime);
        String time = sdf.format(date);
        long cost = System.currentTimeMillis() - startTime;

        log.info("请求详细信息：");
        log.info("请求URI：{}", requestURI);
        requestLog.setRequestUri(requestURI);
        log.info("请求人：{}", requester);
        requestLog.setRequester(requester);
        log.info("请求开始时间：{}", time);
        requestLog.setRequestTime(date);
        log.info("请求共耗时：{}ms", cost);
        requestLog.setCostTime(cost);
        service.save(requestLog);
    }
}
