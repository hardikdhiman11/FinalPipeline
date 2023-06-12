package com.example.Spring.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Hello")
public class controller {

    @GetMapping("/World")
    public String get()
    {
        return "Hi  ";
    }

    @GetMapping("/Universe")
    public String g()
    {
        return "Hello Universe OF DEVOPS";
    }
}
