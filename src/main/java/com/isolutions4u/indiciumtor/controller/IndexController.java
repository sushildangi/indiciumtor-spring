package com.isolutions4u.indiciumtor.controller;

import com.isolutions4u.indiciumtor.model.User;
import com.isolutions4u.indiciumtor.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;


@Controller
public class IndexController {


    @Autowired
    @Qualifier("userService")
    private UserService userService;


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
        User user = new User();
        modelAndView.addObject("user", user);

        return modelAndView;
    }

    @PostMapping("/registration")
    public ModelAndView register(@Valid User user, BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView("/auth/registration");


        User userExists = userService.findUserByEmail(user.getEmail());
        if (userExists != null) {
            bindingResult
                    .rejectValue("email", "error.user",
                            "There is already a user registered with the email provided");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("/auth/registration");
        } else {
            userService.saveUser(user);
            modelAndView.addObject("successMessage", "User has been registered successfully");
            modelAndView.addObject("user", new User());
            modelAndView.setViewName("/auth/registration");

        }
        return modelAndView;
    }


}


