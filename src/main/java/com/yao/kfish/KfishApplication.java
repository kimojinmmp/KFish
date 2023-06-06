package com.yao.kfish;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yao.kfish.mapper")
public class KfishApplication {

    public static void main(String[] args) {
        SpringApplication.run(KfishApplication.class, args);
    }

}
