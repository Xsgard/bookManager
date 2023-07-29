package com.xl.BookManager.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xl.BookManager.entity.RequestLog;
import com.xl.BookManager.mapper.RequestLogMapper;
import com.xl.BookManager.service.RequestLogService;
import org.springframework.stereotype.Service;

/**
 * @author Asgard
 * @version 1.0
 * @description: LogService 实现类
 * @date 2023/7/29 13:38
 */
@Service
public class RequestLogServiceImpl extends ServiceImpl<RequestLogMapper, RequestLog> implements RequestLogService {
}
