/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.sql.Statement;

/**
 *
 * @author frikky
 */
public class provider {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("ContentproviderDataEntryModel");
            PrintWriter out = response.getWriter();

            HttpSession sess = request.getSession(false);
            int uid = Integer.parseInt(sess.getAttribute("userId").toString());
            System.out.println(uid+"   User_id-");
            
            String title_name = request.getParameter("title");
            System.out.println(title_name);

            //int topic_id = Integer.parseInt("topicId");
            String topic_id = request.getParameter("topicId");
            System.out.println(topic_id+"  topic __ id-----------------------");
           
            String content = request.getParameter("entertext");
            System.out.println(content);

           MyDao md=new MyDao(request);
            Statement st=md.getConnection();
// Code to insert Data into title_table

//            String q1 = "SELECT title_id FROM title_table ORDER BY title_id DESC LIMIT 1";
//            ResultSet rs1 = md.LoadData(st, q1);
//            if (!rs1.next()) {
//                String q3 = "INSERT INTO title_table(title_id, title_name, topic_id)VALUES(1,'" + title_name + "','" + topic_id + "')";
//                md.insertData(st, q3);
//            } else {
//                int title_id = rs1.getInt("title_id") + 1;
//                String q3 = "INSERT INTO title_table(title_id, title_name, topic_id)VALUES('"+title_id+"','" + title_name + "','" + topic_id + "')";
//                md.insertData(st, q3);
//            }
// Code to insert Data into Content Table

//            String q2 = "SELECT content_id FROM content_table ORDER BY content_id DESC LIMIT 1";
//            ResultSet rs = md.LoadData(st, q2);
//            
//            if(!rs.next()){
//               String q = "INSERT INTO content_table(content_id, content, dow, dou, uid, status, likes,dislike, title_id, image_loc)VALUES(1,'"+content+"','"+dow+"','"+dou+"','"+uid+"',0,0,0,'"+title_id+"','"+img_loc+"')";
//               md.insertData(st, q);
//            }else{
//                int contentId = rs.getInt("content_id")+1;
//                String q3 = "INSERT INTO content_table(content_id, content, dow, dou, uid, status, likes,dislike, title_id, image_loc)VALUES('"+contentId+"','"+content+"','"+dow+"','"+dou+"','"+uid+"',0,0,0,'"+title_id+"','"+img_loc+"')";
//                md.insertData(st, q3);
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

