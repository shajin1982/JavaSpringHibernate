package com.hq.wx;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class XmlOperate {
    public static void main(String[] args) {
        System.out.println("XmlOperate.main");
        XmlOperate aa=new XmlOperate();
        aa.testReadWebXML();
    }
    public void testReadWebXML(){
        try {
            //1、获取解析器
            SAXReader saxReader = new SAXReader();
            //2、获得 document 文档对象
            Document doc = saxReader.read("web/WEB-INF/weixin.xml");
            //3、获取根元素
            Element rootElement = doc.getRootElement();
            //获取根元素名称
            System.out.println(rootElement.getName());
            //4、获取根元素下面的子元素
            List<Element> childElements = rootElement.elements();
            System.out.println(childElements.get(0).element("access_token_value").getText());
            childElements.get(0).element("access_token_time").setText("55555");
            System.out.println(childElements.get(0).element("access_token_time").getText());
            FileOutputStream out = new FileOutputStream("web/WEB-INF/weixin.xml");
            OutputFormat format = OutputFormat.createPrettyPrint();
            format.setEncoding("utf-8");
            XMLWriter writer = new XMLWriter(out,format);
            writer.write(doc);
            writer.close();
//            //5、遍历子元素
//            for (Element element : childElements) {
//                Element servletName = element.element("access_token_value");
//                System.out.println(servletName.getText());
//            }
        }
        catch (DocumentException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
