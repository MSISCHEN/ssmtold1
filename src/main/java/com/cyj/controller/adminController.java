package com.cyj.controller;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2018/6/5.
 */
@Controller
public class adminController {
    @RequestMapping("admin/")
    public String showIndex(){
        return "index";
    }
}
