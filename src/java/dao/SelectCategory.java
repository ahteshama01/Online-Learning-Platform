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
public class SelectCategory {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try{
            System.out.println("Select Category");
            PrintWriter out = response.getWriter();
            MyDao md=new MyDao(request);
            Statement st=md.getConnection();
            String query="Select category_id,category_name from category_table";
            ResultSet rs=md.loadData(st,query);
            JSONObject categoryobj=new JSONObject();
            while(rs.next()){
                String name=rs.getNString("category_name");
                String id=rs.getNString("category_id");
                categoryobj.put(id,name);
            }
            JSONObject finalObject=new JSONObject();
            finalObject.put("categories",categoryobj);
            out.println(finalObject.toJSONString());
        }catch(Exception e){
            e.printStackTrace();
    }
    
    }
}
