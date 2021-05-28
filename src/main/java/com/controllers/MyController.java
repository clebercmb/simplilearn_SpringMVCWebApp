package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showHome() {
        System.out.println("home");
        return "home";
    }

    @RequestMapping(value = "sayName", method= RequestMethod.POST)
    public String readName(@RequestParam("fname") String firstName, ModelMap map) {
        map.addAttribute("firstName", firstName);
        return "profile"; // append.jsp and takes to profile.jsp page
    }

    @RequestMapping(value="Login", method = RequestMethod.POST)
    public String isValidUser(@RequestParam("username") String userName, @RequestParam("password") String password, ModelMap map) {
        String page="home";
        if(userName.equalsIgnoreCase("tom") && password.equals("jerry")) {
            map.addAttribute("firstName", userName);
            page="profile";
        } else {
            map.addAttribute("errorMessage", "Invalid login credentials");
        }
        return page;
    }
}
