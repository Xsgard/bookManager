package com.xl.BookManager.mapper;

import com.mybatisflex.core.BaseMapper;
import com.xl.BookManager.entity.User;
import org.apache.ibatis.annotations.Mapper;

/*****
 * 用户数据的持久层
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
}
