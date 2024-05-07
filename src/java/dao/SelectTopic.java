/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import org.json.simple.JSONObject;

/**
 *
 * @author frikky
 */
public class SelectTopic {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try{
            System.out.println("Select Topic");
            PrintWriter out = response.getWriter();
            String subcat_id = request.getParameter("subid");
            int n = Integer.parseInt(subcat_id);
            System.out.println(n);
            MyDao md=new MyDao(request);
            Statement st=md.getConnection();
            String query="Select topic_id,topic_name,subcategory_id from topic_table WHERE(subcategory_id='" +n+ "')";
            ResultSet rs=md.loadData(st,query);
            JSONObject topicobj=new JSONObject();
            while(rs.next()){
                String name=rs.getNString("topic_name");
                String id=rs.getNString("topic_id");
                String subid=rs.getNString("subcategory_id");
                topicobj.put(id,name);
            }
            JSONObject finalObject=new JSONObject();
            finalObject.put("topics",topicobj);
            out.println(finalObject.toJSONString());
        }catch(Exception e){
            e.printStackTrace();
    }
    
    }
}
