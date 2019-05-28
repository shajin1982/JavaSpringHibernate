package com.hq.controller;

import com.hq.wx.HttpRequest;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/index")
    public String home(String code){
        System.out.println(code);
        String url="https://qyapi.weixin.qq.com/cgi-bin/gettoken";
        String param="corpid=wx60fb60c92a367e5d&corpsecret=2svuF-PL9uvhDjKqUQovG1_WXtdt60bUZ6oypuXCMk8";
        String str= HttpRequest.sendGet(url,param);
        //1、使用JSONObject
        JSONObject json = JSONObject.fromObject(str);
        System.out.println(json.getString("access_token"));
        String access_token=json.getString("access_token");
        url="https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo";
        param="access_token="+access_token+"&code="+code;
        String userJson=HttpRequest.sendGet(url,param);
        json = JSONObject.fromObject(userJson);
        System.out.println(json.getString("UserId"));
        return "../home";
    }
}
