package com.giligili;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.giligili.dao")
public class GiligiliApplication {

    public static void main(String[] args) {
        SpringApplication.run(GiligiliApplication.class, args);
    }

}
