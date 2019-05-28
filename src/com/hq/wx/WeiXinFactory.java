package com.hq.wx;

import net.sf.json.JSONObject;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class WeiXinFactory {
    public static void main(String[] args) {
        WeiXinFactory wf=new WeiXinFactory();
        System.out.println(wf.getToken("原点"));
    }

    public String getToken(String secretName) {
        String Url = "";
        String Secret = "";
        String Corpid = "";
        String access_token = "";
        try {
            //1、获取解析器
            SAXReader saxReader = new SAXReader();
            //2、获得 document 文档对象
            Document doc = saxReader.read("web/WEB-INF/weixin.xml");
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
                FileOutputStream out = new FileOutputStream("web/WEB-INF/weixin.xml");
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

    public String getUid(String secretName,String code){
        return null;
    }

}
