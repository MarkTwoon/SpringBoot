package com.chinasoft.springbootdemo1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@ServletComponentScan
public class Application extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
     }

}


/*

SpringBoot框架 搭建参考攻略视频： https://www.bilibili.com/video/av90440188
                                              
                                              ————雄赳赳，气昂昂，跨过鸭绿江。
*/
