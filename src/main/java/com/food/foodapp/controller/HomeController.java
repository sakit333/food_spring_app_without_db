package com.food.foodapp.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String welcome() {
        return "index";  // Welcome page
    }

    @GetMapping("/home")
    public String home(Model model) {
        return "home";  // Home page with image
    }
}

