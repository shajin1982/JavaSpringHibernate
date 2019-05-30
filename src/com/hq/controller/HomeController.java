package com.hq.controller;

import com.hq.bean.WXUser;
import com.hq.wx.WeiXinFactory;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/index")
    public String home(String code, Model model){
        WeiXinFactory wf =new WeiXinFactory();
        String uid=wf.getUid("原点",code);
        WXUser wxuser=new WXUser();
        wxuser.setUserid(uid);
        JSONObject json=wf.getUser("原点",uid);
        wxuser.setName(json.getString("name"));
        wxuser.setPosition(json.getString("position"));
        wxuser.setDepartment(wf.getDepartment("原点",json.getString("department")));
        wxuser.setAvatar(json.getString("avatar"));
        model.addAttribute("WXUser", wxuser);
        return "home";
    }
}
