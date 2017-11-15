package com.isolutions4u.indiciumtor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class IndexController {


    @GetMapping(value = {"/", "/home"})
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("page");
        modelAndView.addObject("userClickHome", true);
        return modelAndView;
    }


    @GetMapping("/aboutUs")
    public ModelAndView aboutUs() {
        ModelAndView modelAndView = new ModelAndView("page");
        modelAndView.addObject("userClickAboutUs", true);
        return modelAndView;
    }

    @GetMapping("/registration")
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView("/auth/registration");
        return modelAndView;
    }


}


