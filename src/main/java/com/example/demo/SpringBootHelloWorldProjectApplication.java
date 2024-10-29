package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.klef.ControllerPostmanapi")
public class SpringBootHelloWorldProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootHelloWorldProjectApplication.class, args);
        System.out.println("hi this is spring boot!!");
    }
}
