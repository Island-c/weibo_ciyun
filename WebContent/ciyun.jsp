<%@page import="java.text.SimpleDateFormat, java.io.File"%>
<%@ page import="com.lc.work.*"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>词云</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link href="//cdn.bootcss.com/tether/1.3.6/css/tether.min.css" rel="stylesheet">
<script src="//cdn.bootcss.com/tether/1.3.6/js/tether.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- 头部黑条，嵌入导航三个内容 以及下面一条分割线-->
	<div class="container-fluid" style="padding: 0;">
		<div class="row-fluid">
			<div style="background: #303336; width: 100%; height: 50px;">
				<div class="span12">
					<ul class="nav nav-pills">
						<li class="active" style="padding-left: 20px;"><a href="./index.jsp">首页</a>
						</li>
						<li><a href="#">GitHub</a></li>
						<li class="disabled"><a href="#">信息</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<HR style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
		width="100%" color=#c8cace SIZE=0.1>
	<br />
	
	<!-- 内容部分 -->
	
	<div class="row" style="padding-left:60px;padding-right:60px;">
		<div class="col-md-8">
			<!-- 用一个panel放图片内容 -->
			<div class="panel panel-default">
				<!-- 设置超过height就显示滑动条 -->
				<div id="selectTree" class="ztree" style="height: 500px; overflow: auto;">
				<div class="panel-body" style="text-align: center;">
					<img  height="485px;" class="aligncenter" alt="词云图片" src="/picture/WordClouds.png"></img>
				</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<!-- card放本来属于这个功能块的图片，图片上面是情感分析的描述 -->
			<div class="card">
				<div class="hero-unit">
					<div class="container"style="text-align:center">
						<h2></h2>
						
							<!--<div class="card img-fluid" style="width: 500px,padding-left:20px;">
							 <img class="card-img-top" src="./img/card2.png" alt="Card image" style="width:100%;style=opacity:0.2">
							<div class="card-img-overlay">
							 -->
							
								<br/>
								<h1 class="card-title" style="padding-left:20px;font color='black'">
								<strong>词云<br/></strong>
								</h1>
								<br/>
								<p class="card-text" style="padding-left:50px;">
								<h2 style="padding-left:20px; font color='black' ">词云时间：<%=session.getAttribute("ciyun_time") %></h2><br/>
								<h3>当前情感倾向度为：<%=session.getAttribute("sentiment") %></h3><br/>
								<a href="init.jsp" class="btn btn-primary" type="text-align: center">返回首页</a>
							</div>
						</div>
					</div>
				</div>
			</div>
<!--
	</div>
</div> 
-->

	<HR style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)" width="100%" color=#c8cace SIZE=0.1>
	<div class="row center-block">
		<!-- 剩下 的三个card的链接依然保留-->
		<!-- 第一个card -->
		<div class="col-md-1"></div>
		<div class="col-md-3">
			<div class="card">
				<img style="height:207px" class="card-img-top" alt="Function First"
					src="./img/card1.jpg">
				<div class="card-block">
					<h5 class="card-title">处理数据</h5>
					<p class="card-text">处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据
						处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据</p>
					<p>
						<a  role="button" class="btn btn-primary" href="get_data.jsp">开始处理数据</a>
					</p>
				</div>
			</div>
		</div>
		<!-- 第三个card -->
		<div class="col-md-3">
			<div class="card">
				<img style="height:207px" class="card-img-top" alt="Function Third"
					src="./img/card3.jpg">
				<div class="card-block">
					<h5 class="card-title">实时词云</h5>
					<p class="card-text">实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云
						实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云</p>
					<p>
						<a class="btn btn-primary" role="button" href="ciyun_refresh.jsp">生成实时词云</a>
					</p>
				</div>
			</div>
		</div>
		<!-- 第四个card -->
		<div class="col-md-3">
			<div class="card">
				<img style="height:207px" class="card-img-top" alt="Function Fourth"
					src="./img/card4.jpg">
				<div class="card-block">
					<h5 class="card-title">情感分析</h5>
					<p class="card-text">情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析
						情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析
					<p>
						<a role="button" class="btn btn-primary" href="./sentiment.jsp">情感分析</a>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	<HR
	style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
	width="100%" color=#c8cace SIZE=0.1>
	<!-- 最下面显示黑条，里面嵌入地址等等信息 -->
	<div class="container-fluid" style="padding: 0;">
		<div class="row-fluid">
			<div style="background: #303336; width: 100%; height: 200px;">
				<br /> <br />
					<h5 class="text-center" style="color: white;">
						<strong>1308语义计算实验室</strong><br>
						新科技楼<br>西安电子科技大学<br> 
					</h5>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
