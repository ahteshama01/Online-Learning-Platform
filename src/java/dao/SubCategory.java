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
public class SubCategory {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try{
            System.out.println("Select Sub-Category");
            PrintWriter out = response.getWriter();
            String category_id = request.getParameter("elm");
            int n = Integer.parseInt(category_id);
            MyDao md=new MyDao(request);
            Statement st=md.getConnection();
            String query="Select subcategory_id,subcategory_name,category_id from subcategory_table WHERE(category_id='"+n+"')";
            ResultSet rs=md.loadData(st,query);
            JSONObject subcategoryobj=new JSONObject();
            while(rs.next()){
                String subname=rs.getNString("subcategory_name");
                String subid=rs.getNString("subcategory_id");
                subcategoryobj.put(subid,subname);
            }
            JSONObject finalObject=new JSONObject();
            finalObject.put("subcategories",subcategoryobj);
            out.println(finalObject.toJSONString());
        }catch(Exception e){
            e.printStackTrace();
    }
    
    }
}
