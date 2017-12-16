<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

					<li class="dropdown" ><a href="frontpages/login.jsp"
						class="dropdown-toggle" > 登录

					</a>

						</li>

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

			

						</li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

				

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="media/image/avatar1_small.jpg" />
							 <span class="username">
							 <s:property value="#session.customer.username"/>
                                  
                                 </span> 
							 <i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href='/adminpages/customer/fronteditCustomer.action?id=<s:property value="#session.customer.customerId"/>'><i class="icon-user"></i>
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