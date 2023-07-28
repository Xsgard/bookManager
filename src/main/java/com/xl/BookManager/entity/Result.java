package com.xl.BookManager.entity;

/**
 * @author Asgard
 * @version 1.0
 * @description: 封装返回结果对象
 * @date 2023/7/27 16:10
 */
public class Result {

    private String status;

    private Object data;

    public Result() {
    }

    public Result(String status, Object data) {
        this.status = status;
        this.data = data;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
