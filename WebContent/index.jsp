<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>微博词云生成首页</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet" ></link>
<link href="css/style.css" rel="stylesheet" ></link>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" ></link>
<link href="//cdn.bootcss.com/tether/1.3.6/css/tether.min.css" rel="stylesheet"></link>
<script src="//cdn.bootcss.com/tether/1.3.6/js/tether.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body style="padding-right: 0!important;">
	<!-- 头部黑条，嵌入导航三个内容 -->
	<div class="container-fluid" style="padding: 0;">
		<div class="row-fluid">
			<div style="background: #303336; width: 100%; height: 50px;">
				<div class="span12">
					<ul class="nav nav-pills">
						<li class="active" style="padding-left: 20px;"><a href="#">首页</a>
						</li>
						<li><a href="#">GitHub</a></li>
						<li class="disabled"><a href="#">信息</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<HR style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
		width="100%" color=#c8cace SIZE=>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center" style="font-size: 5rem;"><strong>微博热点词云生成</strong></h1>
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
				<h4 class="text-center"><br>我们的友谊海枯石烂！ 你是第<font color="red">&nbsp;<%=count %>&nbsp;</font>位访客</h4>
				<h5 class="text-center">这个项目完成四个步骤的功能：根据微博热搜数据进行数据爬取，然后……</h5>
				<p style="text-align: center">
					<a class="btn" href="#github....">查看详细项目介绍»</a>
				</p>
				<HR
					style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
					width="100%" color=#c8cace SIZE=0.1>
				<!-- 用carousel slide实现轮播三张图片左右，carous-caption实现图片上添加相应的文字 -->
				<div class="carousel slide" id="carousel-1728">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-1728" class="active"></li>
						<li data-slide-to="1" data-target="#carousel-1728"></li>
						<li data-slide-to="2" data-target="#carousel-1728"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="d-block w-100"
								style="height: calc(219.59px * 2); width: 100vw; overflow: hidden;">
								<img class="d-block w-100" alt="Carousel Bootstrap First"
									src="https://images.pexels.com/photos/2093252/pexels-photo-2093252.jpeg">
							</div>
							<div class="carousel-caption">
								<h3>微博热点词云</h3>
								<p>每天根据微博热点自动采集数据 ，服务端能识别TOP10热点并自动生成词云报告 ，其中包括热点关键词及主题
									、评论和转发关系等联系</p>
							</div>
						</div>
						<div class="carousel-item">
							<div class="d-block w-100"
								style="height: calc(219.59px * 2); width: 100vw; overflow: hidden;">
								<img class="d-block w-100" alt="Carousel Bootstrap Second"
									src="https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg">
							</div>
							<div class="carousel-caption">
								<h3>处理数据</h3>
								<p>通过爬虫技术对微博热点内容进行爬取 ，并存储在……</p>
							</div>
						</div>
						<div class="carousel-item">
							<div class="d-block w-100"
								style="height: calc(219.59px * 2); width: 100vw; overflow: hidden;">
								<img class="d-block w-100" alt="Carousel Bootstrap Third"
									src="https://images.pexels.com/photos/1261820/pexels-photo-1261820.jpeg">
							</div>
							<div class="carousel-caption">
								<h3>情感分析</h3>
								<p>通过对数据的分析 ，针对每一条微博热搜 ，计算它的情感偏向</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carousel-1728"
						data-slide="prev"><span class="carousel-control-prev-icon"></span>
						<span class="sr-only">Previous</span></a> <a
						class="carousel-control-next" href="#carousel-1728"
						data-slide="next"><span class="carousel-control-next-icon"></span>
						<span class="sr-only">Next</span></a>
				</div>
				
				<HR style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)" width="100%" color=#c8cace SIZE=0.1>
				<!-- 下面是四个card，分别显示四个功能 -->
				<div class="row">
					<!-- 第一个card，col-md-3默认把浏览器分成十二份，3的意思是让每个card占十二份中的3份 -->
					<div class="col-md-3">
						<div class="card">
							<img style="height:207px" class="card-img-top" alt="Function First" src="./img/card1.jpg">
							<div class="card-block">
								<h5 class="card-title">处理数据</h5>
								<p class="card-text">处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据
									处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据处理数据</p>
								 <button class="btn btn-primary" data-toggle="modal"
										data-target="#myModal">开始处理数据</button> 
									<!-- 弹出模态框（Modal）根据button弹出的是myModal -->
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<!-- modal-dialog控件会自适应，大小可以更改modal-body里的控件 -->
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">数据处理</h4>
											</div>
											<!-- 下面设置body的大小，300px，超出显示滚动条 -->
											<div class="modal-body">
												<div id="selectTree" class="ztree" style="height: 300px; overflow: auto;">
													<div class="row-fluid">
															<h3>数据处理完成！</h3>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<a class="btn btn-primary" role="button"
													href="get_data.jsp">进入详细页面</a>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 第二个card -->
					<div class="col-md-3">
						<div class="card">
							<img style="height:207px" class="card-img-top" alt="Function Second" src="./img/card2.png">
							<div class="card-block">
								<h5 class="card-title">生成词云</h5>
								<p class="card-text">生成词云生成词云生成词云生成词云生成词云生成词云生成词云生成词云生成词
									生成词云生成词云生成词云生成词云生成词云生成词云生成词云生成词云生成词</p>
								<button class="btn btn-primary" data-toggle="modal"
										data-target="#mySecondModal">开始生成词云</button> 
								<!-- 弹出模态框（Modal） -->
								<div class="modal fade" id="mySecondModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">词云生成</h4>
											</div>
												<div class="modal-body">
													<div id="selectTree" class="ztree" style="height: 300px; overflow: auto;">
														<div class="row-fluid">
															<h3>词云已经生成！</h3>
														</div>
													</div>
												</div>
											<div class="modal-footer">
											<!-- 这里词云生成的执行代码要通过访问ciyunServlet重定向 -->
												<a class="btn btn-primary" role="button"
													href="ciyunServlet">进入详细页面</a>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 第三个card -->
					<div class="col-md-3">
						<div class="card">
							<img class="card-img-top" style="height:207px" alt="Function Third" src="./img/card3.jpg">
							<div class="card-block">
								<h5 class="card-title">实时词云</h5>
								<p class="card-text">实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云
									实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云实时词云</p>
								<button class="btn btn-primary" data-toggle="modal"
										data-target="#myThirdModal">生成实时词云</button> 
								<!-- modal部分 -->
								<div class="modal fade" id="myThirdModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<!-- modal-dialog控件会自适应，大小可以更改modal-body里的控件 -->
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">实时词云</h4>
											</div>
											<div class="modal-body">
												<div id="selectTree" class="ztree" style="height: 300px; overflow: auto;">
													<div class="row-fluid">
															<h3>实时词云（描述……）</h3>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<a class="btn btn-primary" role="button"
													href="ciyun_refresh.jsp">进入详细页面</a>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 第四个card -->
					<!-- 第四个card -->
					<div class="col-md-3">
						<div class="card">
							<img style="height:207px" class="card-img-top" alt="Function Fourth" src="./img/card4.jpg">
							<div class="card-block">
								<h5 class="card-title">情感分析</h5>
								<p class="card-text">情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析
									情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析情感分析
								</p>
								<button class="btn btn-primary" data-toggle="modal"
										data-target="#myFourthModal">开始情感分析</button> 
								<!-- modal内容 -->
								<div class="modal fade" id="myFourthModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<!-- modal-dialog控件会自适应，大小可以更改modal-body里的控件 -->
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">情感分析</h4>
											</div>
											<div class="modal-body">
												<div id="selectTree" class="ztree" style="height: 300px; overflow: auto;">
													<div class="row-fluid">
															<h3>情感分析完成！（情感分析的描述……）</h3>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<a class="btn btn-primary" role="button"
													href="sentiment.jsp">进入详细页面</a>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br />
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
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>