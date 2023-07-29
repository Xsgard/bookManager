package com.xl.BookManager.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xl.BookManager.entity.Log;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author Asgard
 * @version 1.0
 * @description: 日志Mapper
 * @date 2023/7/29 13:29
 */
@Mapper
public interface LogMapper extends BaseMapper<Log> {
}
