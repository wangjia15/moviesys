<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
		<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

<meta charset="utf-8" />
<base href="<%=basePath%>" />

<title>Metronic | Layouts - Promo Page</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="frontpages/mycss.css" rel="stylesheet" type="text/css"/>

<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<link href="media/css/promo.css" rel="stylesheet" type="text/css" />

<link href="media/css/animate.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed page-full-width">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container">

				<!-- BEGIN LOGO -->

				<a class="brand" href="index.html">院线系统前台页面

				</a>

				<!-- END LOGO -->

				<!-- BEGIN HORIZANTAL MENU -->

					<div class="navbar hor-menu hidden-phone hidden-tablet">

					<div class="navbar-inner">

						<ul class="nav">

							<li class="visible-phone visible-tablet">
								<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

								<form class="sidebar-search">

									<div class="input-box">

										<a href="javascript:;" class="remove"></a> <input type="text"
											placeholder="Search..." /> <input type="button"
											class="submit" value=" " />

									</div>

								</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->

							</li>

							<li><a href="index.html"> 首页 </a></li>

						

							
							<li><a href="">影片</a></li>

							<li><a data-toggle="dropdown" class="dropdown-toggle"
								href="">影院 <span class="arrow"></span>

							</a>
                          <b class="caret-out"></b></li>

							<li><span class="hor-menu-search-form-toggler">&nbsp;</span>

								<div class="search-form hidden-phone hidden-tablet">

									<form class="form-search">

										<div class="input-append">

											<input type="text" placeholder="Search..." class="m-wrap">

											<button type="button" class="btn"></button>

										</div>

									</form>

								</div></li>

						</ul>

					</div>

				</div>

				<!-- END HORIZANTAL MENU -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="media/image/menu-toggler.png" alt="" />

				</a>

				<!-- END RESPONSIVE MENU TOGGLER -->

				<!-- BEGIN TOP NAVIGATION MENU -->

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->

					<li class="dropdown" id="header_notification_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-warning-sign"></i> <span class="badge">6</span>

					</a>

						<ul class="dropdown-menu extended notification">

							<li>

								<p>You have 14 new notifications</p>

							</li>

							<li><a href="#"> <span class="label label-success"><i
										class="icon-plus"></i></span> New user registered. <span class="time">Just
										now</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> Server #12 overloaded. <span
									class="time">15 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-warning"><i
										class="icon-bell"></i></span> Server #2 not respoding. <span
									class="time">22 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-info"><i
										class="icon-bullhorn"></i></span> Application error. <span
									class="time">40 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> Database overloaded 68%. <span
									class="time">2 hrs</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> 2 user IP blocked. <span class="time">5
										hrs</span>

							</a></li>

							<li class="external"><a href="#">See all notifications <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

					<li class="dropdown" id="header_inbox_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-envelope"></i> <span class="badge">5</span>

					</a>

						<ul class="dropdown-menu extended inbox">

							<li>

								<p>You have 12 new messages</p>

							</li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar2.jpg" alt="" /></span> <span class="subject">

										<span class="from">Lisa Wong</span> <span class="time">Just
											Now</span>

								</span> <span class="message"> Vivamus sed auctor nibh congue
										nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar3.jpg" alt="" /></span> <span class="subject">

										<span class="from">Richard Doe</span> <span class="time">16
											mins</span>

								</span> <span class="message"> Vivamus sed congue nibh auctor
										nibh congue nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar1.jpg" alt="" /></span> <span class="subject">

										<span class="from">Bob Nilson</span> <span class="time">2
											hrs</span>

								</span> <span class="message"> Vivamus sed nibh auctor nibh
										congue nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li class="external"><a href="inbox.html">See all
									messages <i class="m-icon-swapright"></i>
							</a></li>

						</ul></li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					<li class="dropdown" id="header_task_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-tasks"></i> <span class="badge">5</span>

					</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>You have 12 pending tasks</p>

							</li>

							<li><a href="#"> <span class="task"> <span
										class="desc">New release v1.2</span> <span class="percent">30%</span>

								</span> <span class="progress progress-success "> <span
										style="width: 30%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Application deployment</span> <span
										class="percent">65%</span>

								</span> <span class="progress progress-danger progress-striped active">

										<span style="width: 65%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Mobile app release</span> <span class="percent">98%</span>

								</span> <span class="progress progress-success"> <span
										style="width: 98%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Database migration</span> <span class="percent">10%</span>

								</span> <span class="progress progress-warning progress-striped">

										<span style="width: 10%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Web server upgrade</span> <span class="percent">58%</span>

								</span> <span class="progress progress-info"> <span
										style="width: 58%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Mobile development</span> <span class="percent">85%</span>

								</span> <span class="progress progress-success"> <span
										style="width: 85%;" class="bar"></span>

								</span>

							</a></li>

							<li class="external"><a href="#">See all tasks <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="media/image/avatar1_small.jpg" /> <span class="username">Bob
								Nilson</span> <i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="extra_profile.html"><i class="icon-user"></i>
									My Profile</a></li>

							<li><a href="page_calendar.html"><i
									class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i>
									My Inbox(3)</a></li>

							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>

							<li class="divider"></li>

							<li><a href="extra_lock.html"><i class="icon-lock"></i>
									Lock Screen</a></li>

							<li><a href="login.html"><i class="icon-key"></i> Log
									Out</a></li>

						</ul></li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU -->

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<!-- BEGIN EMPTY PAGE SIDEBAR -->

		<div
			class="page-sidebar nav-collapse collapse visible-phone visible-tablet">

			<ul class="page-sidebar-menu">

				<li class="visible-phone visible-tablet">
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a> <input type="text"
								placeholder="Search..." /> <input type="button" class="submit"
								value=" " />

						</div>

					</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li><a class="active" href="index.html"> Dashboard </a></li>

				<li class="active"><a href="javascript:;"> Layouts <span
						class="arrow open"></span> <span class="selected"></span>

				</a>

					<ul class="sub-menu">

						<li><a href="layout_horizontal_sidebar_menu.html">

								Horzontal & Sidebar Menu </a></li>

						<li><a href="layout_horizontal_menu1.html"> Horzontal
								Menu 1 </a></li>

						<li><a href="layout_horizontal_menu2.html"> Horzontal
								Menu 2 </a></li>

						<li><a href="layout_promo.html"> Promo Page </a></li>

						<li><a href="layout_email.html"> Email Templates </a></li>

						<li><a href="layout_ajax.html"> Content Loading via Ajax</a>

						</li>

						<li><a href="layout_sidebar_closed.html"> Sidebar Closed
								Page </a></li>

						<li><a href="layout_blank_page.html"> Blank Page </a></li>

						<li><a href="layout_boxed_page.html">Boxed Page</a></li>

						<li><a href="layout_boxed_not_responsive.html">

								Non-Responsive Boxed Layout </a></li>

						<li><a href="layout_blank_page.html"> Blank Page </a></li>

						<li><a href="javascript:;"> More options <span
								class="arrow"></span>

						</a>

							<ul class="sub-menu">

								<li><a href="#">Second level link</a></li>

								<li><a href="javascript:;">More options<span
										class="arrow"></span></a>

									<ul class="sub-menu">

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

									</ul></li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

							</ul></li>

					</ul></li>

				<li><a href="">Tables</a></li>

				<li><a href="">Extra <span class="arrow"></span>

				</a>

					<ul class="sub-menu">

						<li><a href="index.html">About Us</a></li>

						<li><a href="index.html">Services</a></li>

						<li><a href="index.html">Pricing</a></li>

						<li><a href="index.html">FAQs</a></li>

						<li><a href="index.html">Gallery</a></li>

						<li><a href="index.html">Registration</a></li>

						<li><a href="index.html">2 Columns (Left)</a></li>

						<li><a href="index.html">2 Columns (Right)</a></li>

					</ul></li>

			</ul>

		</div>

		<!-- END EMPTY PAGE SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content no-min-height">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid promo-page">

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<div class="block-grey">

							<div class="container">
							
							<div class="main" id="main">

    <div class="content" id="content">
        


<div class="widget-movie-detail" id="widgetMovieDetail" style="background:url('https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6d09d266f6039245d78821a6.jpg') no-repeat center top;background-size:100% auto;">

    

<div class="widget-movie-detail-intro" id="detailIntro">
    <div class="container clearfix">
        <div class="fl poster">
                 	<img  class="img"
						src='frontpages/<s:property value="data.filmpicture"/>'
														/>
        </div>
        
       
        <div class="info">
            <h4 class="subtitle"><s:property value="data.filmname"/></h4>

            <div class="record clearfix">
                <p class="star fl"><span class="star-in fl" style="width:96%;"></span></p>
                <span class="nuomi-orange font16 fl num">9.6</span>
            </div>
            <div class="content">
                <p class="des">语言：<s:property value="data.language"/></p>
                <p>导演：<s:property value="data.director"/> &nbsp;&nbsp;&nbsp;&nbsp;</p>
                <p><s:property value="data.location"/>| <s:property value="data.movielength"/>分钟 &nbsp;&nbsp;&nbsp;&nbsp;<s:property value="data.startdate"/>上映</p>
                <p id="intro" class="intro slideup"><s:property value="data.description"/></p>
                <span class="more-btn" id="moreBtn" data-log="{'da_src':'webMovieDetailPg.introBk.moreBtn'}"></span>
            </div>

            
          
        </div>
        
    



    </div>
</div>



  
    <div id="pageletCinema">
















<div class="widget-cinema-cinema-filter" id="cinemaCinemaFilter" mode="async">

    <h3 class="subtitle filter-title">选座购票</h3>
    <div class="container">

    <div class="date clearfix">
        <div class="name fl">日期</div>

        <div class="list fl">
            <ul class="list-first slideup clearfix" id="dateList">
                
                <li class="filter-active" data-type="cinema-filter" data-key="date" data-id="1501689600000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周四8月3日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1501776000000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周五8月4日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1501862400000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周六8月5日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1501948800000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周日8月6日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1502035200000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周一8月7日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1502121600000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周二8月8日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1502208000000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周三8月9日 </span></li>
                
            </ul>
        </div>
    </div>
    <div class="area clearfix">
        <div class="name fl">区域</div>
        <div class="list fl">
            <ul class="list-first clearfix">
                <li id="areaAll" class="all filter-active" data-target="all"><span>全部</span></li>
                <li class="" data-target="area"><span>行政区</span></li>
                <li class="" data-target="subway"><span>地铁附近</span></li>
            </ul>
            <div data-src="all">
                
                <ul class="list-sec area-sec clearfix" data-src="area" id="aoiList">
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2898" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>朝阳</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1960" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>海淀</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2305" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>丰台</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1552" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>大兴</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1116" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>通州</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1118" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>西城</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2304" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>昌平</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1959" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>顺义</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2603" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>房山</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1551" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>东城</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1550" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>石景山</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1115" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>怀柔</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1117" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>门头沟</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1898" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>密云</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1548" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>延庆</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2507" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>平谷</span></li>
                    
                </ul>
                
                
                <ul class="list-sec area-sec clearfix" data-src="subway" id="subwayList">
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="8" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁10号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="33" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁4号线大兴线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="7" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁5号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="4" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁13号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="3" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁1号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="76" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁6号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="34" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁15号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="6" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁2号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="102" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁7号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="5" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>八通线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="36" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>亦庄线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="57" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁8号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="81" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁14号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="9" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>机场线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="58" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁9号线</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="metroLineId" data-id="32" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>地铁昌平线</span></li>
                    
                </ul>
                
            </div>
        </div>
    </div>
    </div>
</div>

<div class="widget-cinema-cinema-cinemalist" id="cinemaCinemalist">
    <ul>
        

<div id="pageletCinemalist">

    <s:iterator value="stores" var="store">
    <li class="clearfix">
        <div class="info fl">
            <p class="title" ><span class="name"><s:property value="#store.name"/></span>
                
            </p>
       
           <p class="clearfix"></p>
        </div>
      
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr"
             href='/frontpages/halldetail.action?storeid=<s:property value="#store.storeId"/>&playdataid=<s:property value="#request.id"/>'>选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">60.5</em>起</p>
        </div>
    </li>
    </s:iterator>
   


</div>
        <div class="loading hide">加载中...</div>
    </ul>

    

    
    <div class="more" id="moreCinema" data-totalnum="157" data-log="{'da_src':'webMovieDetailPg.cinemalistBk.moreLnk'}">点击查看更多影院&nbsp;&nbsp;&gt;</div>
    

    

</div>


</div>
    









</div>





    </div>

</div>
							

						</div>

						</div>

					
						<div class="block-footer">

							<div class="container">

								<div class="row-fluid">

									<div class="span4">

										<h3>Subscribe</h3>

										<p>Donec id elit non mi porta gravida at eget metus. Fusce
											dapibus, justo sit amet risus etiam.</p>

										<form class="form-search" action="#">

											<div class="input-append">

												<input type="text" class="m-wrap"
													placeholder="Email Address">
												<button type="button" class="btn blue">GO!</button>

											</div>

										</form>

									</div>

									<div class="span4">

										<h3>Photo Stream</h3>

										<ul class="unstyled blog-images">

											<li><a href="#"><img src="media/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/3.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/4.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/5.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/6.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/8.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/10.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/11.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/7.jpg" alt=""></a></li>

										</ul>

									</div>

									<div class="span4">

										<h3>Stay Tuned</h3>

										<ul class="social-icons">

											<li><a href="#" data-original-title="amazon"
												class="amazon"></a></li>

											<li><a href="#" data-original-title="behance"
												class="behance"></a></li>

											<li><a href="#" data-original-title="blogger"
												class="blogger"></a></li>

											<li><a href="#" data-original-title="deviantart"
												class="deviantart"></a></li>

											<li><a href="#" data-original-title="dribbble"
												class="dribbble"></a></li>

											<li><a href="#" data-original-title="dropbox"
												class="dropbox"></a></li>

											<li><a href="#" data-original-title="facebook"
												class="facebook"></a></li>

											<li><a href="#" data-original-title="forrst"
												class="forrst"></a></li>

											<li><a href="#" data-original-title="github"
												class="github"></a></li>

											<li><a href="#" data-original-title="Goole Plus"
												class="googleplus"></a></li>

											<li><a href="#" data-original-title="jolicloud"
												class="jolicloud"></a></li>

											<li><a href="#" data-original-title="last-fm"
												class="last-fm"></a></li>

											<li><a href="#" data-original-title="linkedin"
												class="linkedin"></a></li>

											<li><a href="#" data-original-title="picasa"
												class="picasa"></a></li>

											<li><a href="#" data-original-title="pintrest"
												class="pintrest"></a></li>

											<li><a href="#" data-original-title="rss" class="rss"></a></li>

											<li><a href="#" data-original-title="skype"
												class="skype"></a></li>

											<li><a href="#" data-original-title="spotify"
												class="spotify"></a></li>

											<li><a href="#" data-original-title="stumbleupon"
												class="stumbleupon"></a></li>

											<li><a href="#" data-original-title="tumblr"
												class="tumblr"></a></li>

											<li><a href="#" data-original-title="twitter"
												class="twitter"></a></li>

											<li><a href="#" data-original-title="vimeo"
												class="vimeo"></a></li>

											<li><a href="#" data-original-title="wordpress"
												class="wordpress"></a></li>

											<li><a href="#" data-original-title="xing" class="xing"></a></li>

											<li><a href="#" data-original-title="yahoo"
												class="yahoo"></a></li>

											<li><a href="#" data-original-title="youtube"
												class="youtube"></a></li>

											<li><a href="#" data-original-title="vk" class="vk"></a></li>

											<li><a href="#" data-original-title="instagram"
												class="instagram"></a></li>

										</ul>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<!-- END PAGE CONTENT-->

		</div>

		<!-- END PAGE CONTAINER-->

	</div>

	<!-- END PAGE -->

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER1 -->

	<div class="footer">

		<div class="container">

			<div class="footer-inner">

				2013 &copy; Metronic by keenthemes.Collect from <a
					href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a>
				- More Templates <a href="http://www.cssmoban.com/" target="_blank"
					title="模板之家">模板之家</a>

			</div>

			<div class="footer-tools">

				<span class="go-top"> <i class="icon-angle-up"></i>

				</span>

			</div>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<script src="media/js/app.js"></script>

	<script>
		jQuery(document).ready(function() {

			App.init();

			jQuery('#promo_carousel').carousel({

				interval : 10000,

				pause : 'hover'

			});

		});
	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>