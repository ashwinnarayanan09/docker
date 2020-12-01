package com.example.demo.config.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {


    @RequestMapping(value = "/hello")
    public String helloWorld(){

        return "HelloWorld";
    }
}
