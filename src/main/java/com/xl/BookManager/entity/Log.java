package com.xl.BookManager.entity;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author Asgard
 * @version 1.0
 * @description: TODO
 * @date 2023/7/29 13:22
 */
@Data
public class Log implements Serializable {
    private Integer id;
    private String requester;
    private String requestUrl;
    private LocalDateTime requestTime;
    private Integer costTime;
}
