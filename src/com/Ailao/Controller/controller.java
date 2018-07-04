package com.Ailao.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;


@Controller

public class controller {

    public ModelAndView firstControllertest(HttpServletRequest request){
        //@RequestMapping(value = )
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("name","Zez");
        return modelAndView;

    }


}
