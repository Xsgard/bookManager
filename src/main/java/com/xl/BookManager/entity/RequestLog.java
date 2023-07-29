package com.xl.BookManager.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/29 13:22
 */
@Data
@TableName("t_log")
public class RequestLog implements Serializable {
    private Integer id;
    private String requester;
    private String requestUri;
    private Date requestTime;
    private Long costTime;
}
