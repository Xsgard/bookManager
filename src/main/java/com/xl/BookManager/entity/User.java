package com.xl.BookManager.entity;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.Objects;

/******************
 * @Author yejf
 * @Description User实体
 */
@Data
public class User {

    private Integer id;

    private String userName;  //登录用户名,唯一且非空

    private String password;  //登录密码

    private String mobilePhone; //手机号，唯一且非空

    private UserStatus status; //用户状态

    private String realName; //真实姓名

    private LocalDateTime createDate;  //创建时间

    private LocalDateTime updateDate; //更新时间

    private LocalDateTime lastLoginDate;  //最后一次登录时间

    private String avatarUrl;  //头像地址

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("User{");
        sb.append("id=").append(id);
        sb.append(", userName='").append(userName).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", status=").append(status);
        sb.append(", realName='").append(realName).append('\'');
        sb.append(", createDate=").append(createDate);
        sb.append(", mobilePhone=").append(mobilePhone);
        sb.append(", updateDate=").append(updateDate);
        sb.append(", lastLoginDate=").append(lastLoginDate);
        sb.append(", avatarUrl='").append(avatarUrl).append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(userName, user.userName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userName);
    }
}
