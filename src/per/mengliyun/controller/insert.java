package per.mengliyun.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import per.mengliyun.daos.DBUtil;
import per.mengliyun.daos.IUserDAO;
import per.mengliyun.daos.UserDAO;
import per.mengliyun.entitys.User;

@WebServlet("/insert.do")
public class insert extends HttpServlet {
	private IUserDAO dao = new UserDAO();
	private DBUtil db = new DBUtil();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String sex = request.getParameter("optionsRadios");
		String classId = request.getParameter("classId");
		String money = request.getParameter("money");
		String phone = request.getParameter("phone");
		
		User bean = new User();
		bean.setName(name);
		bean.setSex(sex);
		bean.setClassId(classId);
		bean.setMoney(Integer.parseInt(money));
		bean.setPhone(phone);
		boolean flag = false;
		try {
			flag =  dao.insert(bean,db.getConnection());
			out.print(flag);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
		}
		
		
	}

}
