package com.xl.BookManager.entity;

public enum UserStatus {

    正常(0),   //0

    禁用(1);   //1
    private int value;

    UserStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
