package per.mengliyun.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import per.mengliyun.daos.CheckingDAO;
import per.mengliyun.daos.DBUtil;
import per.mengliyun.daos.ICheckingDAO;
import per.mengliyun.entitys.Checking;

@WebServlet("/query.do")
public class query extends HttpServlet {
	private DBUtil db = new DBUtil();
	private ICheckingDAO dao = new CheckingDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out = response.getWriter();
	try {
		List<Checking> checkings = this.dao.select(db.getConnection());
		
		JSONArray array = new JSONArray();
		for(Checking a : checkings){
			JSONObject obj = new JSONObject();
			obj.put("id", a.getId());
			obj.put("name", a.getName());
			obj.put("sex", a.getSex());
			obj.put("classId", a.getClassId());
			obj.put("date", a.getDate());
			obj.put("score", a.getScore());
			obj.put("phone", a.getPhone());
			array.add(obj);
		}	
		out.print(array);	

	} catch (Exception e) {
		e.printStackTrace();
	}	
}
}
