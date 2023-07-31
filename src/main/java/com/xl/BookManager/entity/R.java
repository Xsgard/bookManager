package com.xl.BookManager.entity;

import lombok.Data;

/**
 * @author Asgard
 * @version 1.0
 * @description: 封装返回结果对象
 * @date 2023/7/27 16:10
 */
@Data
public class R {

    private String status;

    private Object data;

    public R() {
    }

    public R(String status, Object data) {
        this.status = status;
        this.data = data;
    }
}
