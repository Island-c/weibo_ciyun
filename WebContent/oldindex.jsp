<%@page import="org.languagetool.language.SouthAfricanEnglish"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.lc.utils.*"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>微博热点</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"1579",secure:"1588"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/weibo_ciyun/WebContent/index.jsp">

	<%

		int count=0;
		
		if((session.getAttribute("count")) ==null){
			count=(Integer)application.getAttribute("count");
			session.setAttribute("count", count);
			System.out.println("从application获取count");
		}else{
			count=(Integer)session.getAttribute("count");
			System.out.println("从session获取count");
		}

	%>

	<font size="5"  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/weibo_ciyun/WebContent/index.jsp">这是一个</font>
	<font size="10" color="green" >高端</font>
	<font size="5" >的界面</font>

	<hr>
	
	<form action="get_data.jsp" method="get">
		<input type="submit" name="button" id="button" value="处理数据"/>
	</form>
		<br>
	<form action="ciyunServlet" method="get">
		<input type="submit" name="button" id="button" value="生成词云"/>
	</form>

		<br>
		<form action="ciyun_refresh.jsp" method="get">
			<input type="submit" name="button" id="button" value="实时词云"/>
		</form>
		<br>
		
	<form action="sentiment.jsp" method="get">
		<input type="submit" name="button" id="button" value="情感分析"/>
	</form>

		
		<hr />	
		<p>我们的友谊海枯石烂！ 你是第<font color="red">&nbsp;<%=count %>&nbsp;</font>位访客</p>
</body>
</html>
