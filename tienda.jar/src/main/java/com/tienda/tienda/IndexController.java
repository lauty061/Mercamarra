package com.tienda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

   
    @GetMapping("/index")
    public String mostrarIndex() {
        return "index"; 
    }


    @GetMapping("/")
    public String redirigirInicio() {
        return "index";
    }
}
