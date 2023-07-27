package com.xl.BookManager.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * @author Asgard
 * @version 1.0
 * @description: 登录校验器
 * @date 2023/7/27 14:30
 */
//@WebFilter(filterName = "Login_Filter", urlPatterns = "/*")
public class LoginCheckFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    }
}
