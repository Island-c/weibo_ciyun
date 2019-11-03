package com.lc.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lc.utils.VisitorCounter;

public class InitServlet extends HttpServlet {
	@Override
	protected void  service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("MM-dd HH:mm:ss");
		System.out.print(df.format(new Date())+"新用户访问:");
		System.out.println(req.getRequestURL());
		
		
		ServletContext application =this.getServletContext();
		HttpSession session =req.getSession();
		int count=0;

		if(application.getAttribute("count")==null){
			count=VisitorCounter.readFile(); //读取文件获取数据赋给count
			application.setAttribute("count",new Integer(count)); //application必须是一个对象，需要装箱
		}
		count=(Integer)application.getAttribute("count");
		System.out.println("开始初始化，session："+session.isNew());
		if(session.isNew()){
			++count;
		}
		application.setAttribute("count",count);
		VisitorCounter.writeFile(count);//更新文件记录 

		System.out.println("初始化结束，当前访问"+count +",开始重定向");
		
		
		
		resp.sendRedirect("index.jsp");
		
		

	}
}
