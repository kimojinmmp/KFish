package com.yao.kfish;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.engine.VelocityTemplateEngine;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;

@SpringBootTest
class KfishApplicationTests {

    private static final String OUTPUT_DIR = System.getProperty("user.dir") + File.separator + "src/main/java";
    @Test
    void contextLoads() {
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/kfish?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT", "root", "123456")
                // 开启fileOverrride重新旧文件，disableOpenDir禁用代码生成后打开输出目录对话框
                .globalConfig(builder -> {
                    builder.author("kimoji") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(OUTPUT_DIR); // 指定输出目录
                })
                // parent指定生成的代码在哪个包下，entity可以指定实体(DO)所在的包名
                .packageConfig(builder -> builder.parent("com.yao.kfish").entity("pojo"))
                // addInclude指定包含的表名，不调用该方法默认为所有表生成代码；addTablePrefix可以过滤表前缀，即t_user变成user
                .strategyConfig(builder -> builder.addTablePrefix("tb_")
                        // 禁用为实体类生成序列化ID；formatFileName格式化生成的实体类名称，即t_user -> UserDO
                        .entityBuilder().disableSerialVersionUID()
                        // formatMapperFileName格式化Mapper接口名称，即t_user -> UserMapper
                        // formatXmlFileName格式化Mapper.xml文件名称，即t_user -> UserMapper.xml
                        .mapperBuilder().formatMapperFileName("%sMapper").formatXmlFileName("%sMapper")
                        .build()
                )
                // MyBatis-Plus代码生成器是通过模板引擎来渲染文件的，默认模板引擎是Velocity，根据依赖我们使用Freemarker
                .templateEngine(new VelocityTemplateEngine())
                .execute();

    }

}
