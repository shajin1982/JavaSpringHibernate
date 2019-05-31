package com.hq.wx;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class WeiXinFactory {

    private String getToken(String secretName) {
        String Url = "";
        String Secret = "";
        String Corpid = "";
        String access_token = "";
        try {
            //1、获取解析器
            SAXReader saxReader = new SAXReader();
            //2、获得 document 文档对象
            Document doc = saxReader.read(this.getXmlPath());
            //3、获取根元素
            Element rootElement = doc.getRootElement();
            //获取根元素名称
            //System.out.println(rootElement.getName());
            //4、获取根元素下面的子元素
            List<Element> childElements = rootElement.elements();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String access_token_time = childElements.get(0).element("access_token_time").getText();
            Date dateold = simpleDateFormat.parse(access_token_time);
            Date datenew = new Date();
            System.out.println();
            long datediff = (datenew.getTime() - dateold.getTime()) / 1000;
            //判断时间差
            if (datediff >= 7000) {
                //5、遍历子元素
                for (Element qweixinElement : childElements) {
                    if (qweixinElement.getName().equals("corpid")) {
                        Corpid = qweixinElement.getText();
                    }
                    if (qweixinElement.getName().equals("secrets")) {
                        List<Element> secretsElement = qweixinElement.elements();
                        for (Element secretElement : secretsElement) {
                            if (secretElement.element("name").getText().equals(secretName)) {
                                Secret = secretElement.element("value").getText();
                            }
                        }
                    }
                    if (qweixinElement.getName().equals("request-urls")) {
                        List<Element> requesturlsElements = qweixinElement.elements();
                        for (Element requesturlsElement : requesturlsElements) {
                            if (requesturlsElement.element("name").getText().equals("GetToken")) {
                                Url = requesturlsElement.element("url").getText();
                            }
                        }
                    }
                }
                String param = "corpid=" + Corpid + "&corpsecret=" + Secret;
                String str = HttpRequest.sendGet(Url, param);
                //1、使用JSONObject
                JSONObject json = JSONObject.fromObject(str);
                access_token = json.getString("access_token");
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                String nowtime = df.format(new Date());
                childElements.get(0).element("access_token_value").setText(access_token);
                childElements.get(0).element("access_token_time").setText(nowtime);
                FileOutputStream out = new FileOutputStream(this.getXmlPath());
                OutputFormat format = OutputFormat.createPrettyPrint();
                format.setEncoding("utf-8");
                XMLWriter writer = new XMLWriter(out, format);
                writer.write(doc);
                writer.close();
                return access_token;
            } else {
                return childElements.get(0).element("access_token_value").getText();
            }
        } catch (ParseException | DocumentException | IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getUid(String secretName, String code) {
        String Url = "";
        Url = this.getUrl("GetUserInfo");
        if (Url != null) {
            String access_token = this.getToken(secretName);
            String param = "access_token=" + access_token + "&code=" + code;
            String userJson = HttpRequest.sendGet(Url, param);
            JSONObject json = JSONObject.fromObject(userJson);
            return json.getString("UserId");
        } else {
            return null;
        }
    }

    public JSONObject getUser(String secretName, String userid) {
        String Url = "";
        Url = this.getUrl("GetUser");
        if (Url != null) {
            String access_token = this.getToken(secretName);
            String param = "access_token=" + access_token + "&userid=" + userid;
            String userJson = HttpRequest.sendGet(Url, param);
            JSONObject json = JSONObject.fromObject(userJson);
            return json;
        } else {
            return null;
        }
    }

    public JSONArray getDepartment(String secretName,String departmentsId) {
        String Url = "";
        Url = this.getUrl("GetDepartment");
        String departmentId = departmentsId.substring(1,departmentsId.length()-1);
        String[] departmentIdArray = departmentId.split(",");
        //构建json数组
        JSONArray departmentJsonArray=new JSONArray();
        if(Url!=null){
            for (String department:departmentIdArray){
                String access_token = this.getToken(secretName);
                String param = "access_token=" + access_token + "&id=" + department;
                String departmentJson = HttpRequest.sendGet(Url, param);
                JSONObject json = JSONObject.fromObject(departmentJson);
                JSONObject member=new JSONObject();//创建部门json数组
                JSONArray jsonArray=JSONArray.fromObject(json.getString("department"));//获取部门json数组
                for(Object oj:jsonArray){//foreach 遍历部门json数组
                    JSONObject jo=(JSONObject)oj;//强制转换object为json对象
                    if(jo.getString("id").equals(department)){//判断是否部门id和目前要查询的部门id是否一致，一致的进行封装（因为企业微信会返回所有这个id下的部门）
                        //封装部门为json数组
                        member.put("id",department);
                        member.put("name",jo.getString("name"));
                    }
                }
                departmentJsonArray.add(member);//添加数组
            }
            return departmentJsonArray;
        }else {
            return null;
        }
    }

    private String getUrl(String requestName) {
        String Url = "";
        try {
            //1、获取解析器
            SAXReader saxReader = new SAXReader();
            //2、获得 document 文档对象
            Document doc = saxReader.read(this.getXmlPath());
            //3、获取根元素
            Element rootElement = doc.getRootElement();
            //4、获取根元素下面的子元素
            List<Element> childElements = rootElement.elements();
            //遍历子元素
            for (Element qweixinElement : childElements) {
                if (qweixinElement.getName().equals("request-urls")) {
                    List<Element> requesturlsElements = qweixinElement.elements();
                    for (Element requesturlsElement : requesturlsElements) {
                        if (requesturlsElement.element("name").getText().equals(requestName)) {
                            Url = requesturlsElement.element("url").getText();
                        }
                    }
                }
            }
            return Url;
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        return null;
    }

    //获取weixin绝对路径
    public static String getXmlPath()
    {
        //file:/D:/JavaWeb/.metadata/.me_tcat/webapps/TestBeanUtils/WEB-INF/classes/
        String path=Thread.currentThread().getContextClassLoader().getResource("").toString();
        path=path.replace('/', '\\'); // 将/换成\
        path=path.replace("file:", ""); //去掉file:
        path=path.replace("classes\\", ""); //去掉class\
        path=path.substring(1); //去掉第一个\,如 \D:\JavaWeb...
        path+="weixin.xml";
        return path;
    }
}
