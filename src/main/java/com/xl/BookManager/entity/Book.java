package com.xl.BookManager.entity;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

/**
 * @author yuyan
 * @version 1.0
 * @date 2020/5/11 11:08
 * @description Book实体
 */
@Data
@TableName("t_book")
public class Book implements Serializable {
    private Integer id;

    //    @NotEmpty(message = "{name.error.notnull}")
    //    @Size(max = 25, message = "{name.error.max}")
    @NotEmpty(message = "图书名不能为空")
    @Size(max = 25, message = "图书名长度不能超过25个字符")
    private String name;

    //    @NotEmpty(message = "{author.error.notnull}")
    @NotEmpty(message = "作者不能为空")
    private String author;

    //    @Min(value = 0, message = "{price.error.pattern}")
    @Min(value = 0, message = "价格必需大于0")
    private Float price;

    @NotEmpty(message = "出版社不能为空")
    private String publisher;

    @Past(message = "出版日期不能早于今天")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")  //此注解来自于：jackson-datatype-jsr310
    private LocalDate publishDate;

    //@NotBlank(message = "{coverurl.error.notnull}")
    private String coverUrl;

    @TableLogic
    private Integer isDelete;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return Objects.equals(id, book.id) &&
                Objects.equals(name, book.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}
