package com.hq.bean;

import net.sf.json.JSONArray;

public class WXUser {
    private String userid;//成员UserID
    private String name;//成员名称
    private JSONArray department;//成员所属部门id列表，仅返回该应用有查看权限的部门id
    private String order;//	部门内的排序值，默认为0。数量必须和department一致，数值越大排序越前面。值范围是[0, 2^32)
    private String position;//职务信息；第三方仅通讯录应用可获取
    private String mobile;//手机号码，第三方仅通讯录应用可获取
    private String email;//邮箱，第三方仅通讯录应用可获取
    private String is_leader_in_dept;//表示在所在的部门内是否为上级。；第三方仅通讯录应用可获取

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public JSONArray getDepartment() {
        return department;
    }

    public void setDepartment(JSONArray department) {
        this.department = department;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIs_leader_in_dept() {
        return is_leader_in_dept;
    }

    public void setIs_leader_in_dept(String is_leader_in_dept) {
        this.is_leader_in_dept = is_leader_in_dept;
    }
}
