package com.isolutions4u.indiciumtor.controller;

import com.isolutions4u.indiciumtor.model.User;
import com.isolutions4u.indiciumtor.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;


@Controller
public class IndexController {


    @Autowired
    @Qualifier("userService")
    private UserService userService;


    @GetMapping("/registration")
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView("/auth/registration");
        User user = new User();
        modelAndView.addObject("user", user);

        return modelAndView;
    }

    @GetMapping("/login")
    public ModelAndView login(@RequestParam(name = "error", required = false) String error,
                              @RequestParam(name = "logout", required = false) String logout) {
        ModelAndView modelAndView = new ModelAndView("/auth/login");
        if (error != null) {
            modelAndView.addObject("message", "Invalid User Name or Password!");
        }
        if (logout != null) {
            modelAndView.addObject("logout", "User has Successfully Logged out!");
        }
        modelAndView.addObject("title", "Login");

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
        if (!user.getPassword().equals(user.getConfirmPassword())) {
            bindingResult
                    .rejectValue("password", "error.user",
                            "Password mismatch");
            user.setConfirmPassword("");
            user.setPassword("");

        }

        userExists = userService.findUserByPhone(user.getPhone());

        if (userExists != null) {
            bindingResult
                    .rejectValue("phone", "error.user",
                            "There is already a user registered with the phone provided");
        }

        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("/auth/registration");
        } else {
            userService.saveUser(user);
            modelAndView.addObject("successMessage", "User has been registered successfully");
            modelAndView.addObject("user", new User());
            modelAndView.setViewName("/auth/login");

        }
        return modelAndView;
    }


    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {

        // first we are going to fetch the authentication
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }

        return "redirect:/login?logout";
    }


}


