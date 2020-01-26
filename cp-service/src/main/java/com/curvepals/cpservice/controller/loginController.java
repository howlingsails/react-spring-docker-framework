package com.curvepals.cpservice.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class loginController {

    @RequestMapping("/test")
    public String test() {
        return "test";
    }
}
