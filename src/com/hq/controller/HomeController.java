package com.hq.controller;

import com.hq.wx.WeiXinFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/index")
    //@ResponseBody
    public String home(String code, Model model){
        WeiXinFactory wf =new WeiXinFactory();
        String uid=wf.getUid("原点",code);
        System.out.printf(uid);
        model.addAttribute("uid", uid);
        return "home";
    }
}
