package com.wjapp.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.wjapp.viewmodel.Admin;

@SuppressWarnings("serial")
public class AdminInterceptor extends AbstractInterceptor {
	@SuppressWarnings("unchecked")
	@Override

	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		Map session = context.getSession();
		Admin admin = (Admin) session.get("admin");
		if (admin != null) {
			return invocation.invoke();
		} else {
			HttpServletRequest request = (HttpServletRequest) context.get(StrutsStatics.HTTP_REQUEST);
			String queryString = request.getQueryString();
			// 预防空指针
			if (queryString == null) {
				queryString = "";
			}
			// 拼凑得到登陆之前的地址
			String realPath = request.getRequestURI() + "?" + queryString;
			System.out.println(realPath);
			session.put("SOURCE_URL", realPath);
			context.put("message", "您还没有登录，请登录系统。");
			 return Action.LOGIN;	 // 放行
		}

	
	}
}