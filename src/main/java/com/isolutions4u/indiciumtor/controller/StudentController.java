package com.isolutions4u.indiciumtor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/student")
public class StudentController {


    @GetMapping(value = {"/", "/home"})
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("student/page");
        modelAndView.addObject("userClickHome", true);
        modelAndView.addObject("title", "Home");
        return modelAndView;
    }


    @GetMapping("/aboutUs")
    public ModelAndView aboutUs() {
        ModelAndView modelAndView = new ModelAndView("student/page");
        modelAndView.addObject("userClickAboutUs", true);
        modelAndView.addObject("title", "About Us");
        return modelAndView;
    }


    @GetMapping("/viewProfile")
    public ModelAndView viewProfile() {
        ModelAndView modelAndView = new ModelAndView("student/page");
        modelAndView.addObject("userClickViewProfile", true);
        modelAndView.addObject("title", "View Profile");
        return modelAndView;
    }
}
