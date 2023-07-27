package com.xl.BookManager.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xl.BookManager.entity.Book;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper extends BaseMapper<Book> {
}
