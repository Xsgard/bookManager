package com.xl.BookManager.config;

import com.xl.BookManager.interceptor.LogInterceptor;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

/******************
 * @Author yejf
 * @Description WebMvcConfig
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    private final String UPLOAD_IMAGE_URL;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //拦截所有请求做日志
        registry.addInterceptor(new LogInterceptor()).addPathPatterns("/**");
    }

    public WebMvcConfig() {
        System.out.println("--- 初始化 WebMvcConfig ....");
        ApplicationHome applicationHome = new ApplicationHome(getClass());
        UPLOAD_IMAGE_URL = "file:" + applicationHome.getDir().getAbsolutePath() + "/upload/images/";
        System.out.println("----> 上传的图片映射路径：" + UPLOAD_IMAGE_URL);
    }

    //@Bean
    /*public FilterRegistrationBean filterRegistrationBean() {
        System.out.println("执行了 FilterRegistrationBean...");
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new LoginFilter());
        filterRegistrationBean.addUrlPatterns("/book/*");
        filterRegistrationBean.setOrder(1);
        return filterRegistrationBean;
    }*/


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //添加一个文件上传的静态路径映射, 如果是文件目录，则需要以 file: 开头
        registry.addResourceHandler("/images/**").addResourceLocations(UPLOAD_IMAGE_URL);
    }

    @Override
    public Validator getValidator() {
        LocalValidatorFactoryBean lvfb = new LocalValidatorFactoryBean();
        //设置属性
        lvfb.setValidationMessageSource(messageSource());
        //返回
        return lvfb;
    }

    /*****
     * 用来指定验证时要读取的资源文件
     * @return
     */
    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
        //属性
        messageSource.setBasename("beanValidation");
        messageSource.setDefaultEncoding("UTF-8");
        messageSource.setCacheSeconds(60);
        messageSource.setAlwaysUseMessageFormat(true);
        //
        return messageSource;
    }

    @Override
    public void extendMessageConverters(List<HttpMessageConverter<?>> converters) {
        MappingJackson2HttpMessageConverter messageConverter = new MappingJackson2HttpMessageConverter();
        messageConverter.setObjectMapper(new JacksonObjectMapper());
        converters.add(0, messageConverter);
    }
}
