package com.example.demo_app;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Chào mừng Hoàn đẹp trai đã đến với Spring Boot!";
    }
}