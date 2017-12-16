<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
	<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->        

			<ul class="page-sidebar-menu">

				<li>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>

				<li>

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="Search..." />

							<input type="button" class="submit" value=" " />

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li class="start active ">

					<a href="index.html">

					<i class="icon-home"></i> 

					<span class="title">首页</span>

					</a>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-cogs"></i> 

					<span class="title">电影信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="adminpages/category/categoryList.action">
                              电影分类
							</a>

						</li>

						<li >

							<a href="adminpages/actor/actorList.action">

							演员信息</a>

						</li>

						<li >

							<a href="adminpages/film/filmList.action">

							电影基本信息</a>

						</li>
						
						<li >

							<a href="adminpages/language/languageList.action">

							电影语言信息</a>

						</li>

						

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-bookmark-empty"></i> 

					<span class="title">客户信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="adminpages/customer/customerList.action">

				客户个人信息			</a>

						</li>

						<li >

							<a href="adminpages/address/addressList.action">

							地址信息
							
								<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li>
								<s:a href="adminpages/country/countryList.action" >国家信息</s:a>
								
								</li>

								<li>
								<s:a href="adminpages/address/addressList.action" >详细地址</s:a>
								
								</li>

								<li>
								<s:a href="adminpages/city/cityList.action" >城市信息</s:a>
								
								</li>

							</ul>

						</li>

						

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-table"></i> 

					<span class="title">院线信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="adminpages/hall/hallList.action">
                               放映厅信息
							</a>

						</li>

						<li >

							<a href="adminpages/store/storeList.action">

							影院信息</a>

						</li>

						<li >

							<a href="adminpages/staff/staffList.action">

							员工信息</a>

						</li>

						<li >

							<a href="adminpages/country/countryList.action">

							员工任务分配</a>

						</li>

						

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-briefcase"></i> 

					<span class="title">销售信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="page_timeline.html">

							<i class="icon-time"></i>

							售卖场次座位信息</a>

						</li>

						

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-gift"></i> 

					<span class="title">影片拍片管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="adminpages/playdata/playdataList.action">

							影片播放当期管理</a>

						</li>

						<li >

							<a href="adminpages/schedule/scheduleList.action">

							影片播放场次管理</a>

						</li>

						

					</ul>

				</li>

				<li>

					<a class="active" href="javascript:;">

					<i class="icon-sitemap"></i> 

					<span class="title">销售信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li>

								<a href="adminpages/saleinfo/saleinfoList.action">

							订单信息管理</a></li>
							
								<li>	<a href="adminpages/payment/paymentList.action">

							支付信息管理</a>

						</li>

						

					</ul>

				</li>

	
			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->
