package com.xl.BookManager.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.xl.BookManager.entity.User;
import com.xl.BookManager.service.UserService;
import com.xl.BookManager.utils.CheckCodeUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 * @author Asgard
 * @version 1.0
 * @description: 处理‘/user’的请求
 * @date 2023/7/27 14:26
 */
@Controller
@RequestMapping("/user")
@Slf4j
public class UserController {
    private UserService userService;

    @Autowired
    public void setApplicationContext(UserService userService) {
        this.userService = userService;
    }

    /**
     * 跳转至登录页
     * @return
     */
    @RequestMapping(value = "/toLogin", method = RequestMethod.GET)
    public String toLogin() {
        return "user/login";
    }

    /**
     * 登录方法
     *
     * @param name
     * @param password
     * @param checkcode
     * @param model
     * @param session
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("name") String name, @RequestParam("pwd") String password,
                        @RequestParam("checkcode") String checkcode, Model model, HttpSession session) throws IOException {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(StringUtils.isNotEmpty(name), User::getUserName, name);
        User user = userService.getOne(queryWrapper);
        if (user == null) {
            model.addAttribute("USER_NOT_EXIST", "用户不存在");
            return "user/login";
        }
        if (!password.equals(user.getPassword())) {
            model.addAttribute("PWD_ERROR", "密码错误");
            return "user/login";
        }
        String code = (String) session.getAttribute("checkCode");
        if (code.compareToIgnoreCase(checkcode) != 0) {
            model.addAttribute("CKCODE_ERROR", "验证码错误");
            return "user/login";
        }
        session.setAttribute("LOGIN_USER", user);
        user.setLastLoginDate(LocalDateTime.now());
        userService.updateById(user);
        log.info("用户{}登录成功", user.getUserName());
        return "redirect:/book/list";
    }

    /**
     * 跳转至注册页
     * @return
     */
    @RequestMapping("/toRegister")
    public String toRegister() {
        return "user/register";
    }

    /**
     * 注册功能
     * @param user
     * @param pwd2
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(User user, String pwd2, Model model) {
        if (!user.getPassword().equals(pwd2)) {
            model.addAttribute("CHECK_PWD_ERROR", "两次密码输入不一样");
            return "user/register";
        }
        if (user.getRealName() == null) {
            user.setRealName(user.getUserName());
        }
        user.setCreateDate(LocalDateTime.now());
        user.setUpdateDate(LocalDateTime.now());
        userService.save(user);
        return "user/login";
    }

    /**
     * 退出登录并跳转至登录页
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        log.info("用户已退出登录");
        session.invalidate();
        return "redirect:/user/toLogin";
    }

    /**
     * 获取验证码
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/checkCode", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
    public void checkCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        ServletOutputStream outputStream = response.getOutputStream();
        String checkCode = CheckCodeUtil.outputVerifyImage(100, 35, outputStream, 4);
        session.setAttribute("checkCode", checkCode);
    }
}
