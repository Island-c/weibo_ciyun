package com.lc.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lc.work.Factory;
import com.lc.work.PathConfig;

public class ciyunServlet extends HttpServlet {

	@Override
	protected void  service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
	
		//ServletContext application =this.getServletContext();
		HttpSession session =req.getSession();
		
	 	/*设置session ： 热搜时间+ 生成词云*/
		File file =new File(PathConfig.PYTHON_PATH+"ciyun.txt");
		SimpleDateFormat formatter=null;
		Calendar cal=null;
		if(file.exists()){
			cal = Calendar.getInstance();  
			long time = file.lastModified();  
			formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");         
			cal.setTimeInMillis(time);   
			String ciyun_time=formatter.format(cal.getTime());
			session.setAttribute("ciyun_time", ciyun_time);
			//ciyun.general_ciyun();
			try {
				Factory.get_ciyun();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				System.out.println("调用python方法获取词云失败");
			}
		}
		else {
			session.setAttribute("ciyun_time", new String("还未分析数据"));
		}
		
		/*设置session ： 情感分析*/
		String senti=(String)session.getAttribute("sentiment");
		if(senti==null){
			try {
				senti=Factory.sentiment();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("sentiment", senti);
		}
		resp.sendRedirect("ciyun.jsp");
	}
	
}
