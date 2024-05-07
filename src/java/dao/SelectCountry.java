/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;
import org.json.simple.JSONObject;

/**
 *
 * @author frikky
 */
public class SelectCountry implements Model {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try{
            System.out.println("Select Country");
            PrintWriter out = response.getWriter();
            MyDao md=new MyDao(request);
            Statement st=md.getConnection();
            String query="Select Country_code,Country_name from Country_master";
            ResultSet rs=md.loadData(st,query);
            JSONObject countryobj=new JSONObject();
            while(rs.next()){
                String name=rs.getNString("Country_name");
                String code=rs.getNString("Country_code");
                countryobj.put(code,name);
            }
            JSONObject finalObject=new JSONObject();
            finalObject.put("countries",countryobj);
            out.println(finalObject.toJSONString());
        }catch(Exception e){
            e.printStackTrace();
    }
    
    }
}