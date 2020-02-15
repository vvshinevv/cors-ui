package com.cors.ui;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CorsUi {

    @RequestMapping("/cors")
    public ModelAndView index() {
        return new ModelAndView("/index");
    }
}
