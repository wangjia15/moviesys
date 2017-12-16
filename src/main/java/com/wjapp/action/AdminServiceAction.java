package com.wjapp.action;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wjapp.beans.Address;
import com.wjapp.service.StaffManager;
import com.wjapp.viewmodel.Admin;




@SuppressWarnings("serial")

@ParentPackage("struts-default")  
@Namespace("/adminpages/login")    
@Results({  
    @Result(name = "success", location = "/adminpages/staff/staffList.jsp"),
    @Result(name = "error", location = "/adminpages/staff/errorStaff.jsp"),
    @Result(name = "input", location = "/adminpages/login.jsp")  
})
public class AdminServiceAction extends ActionSupport  implements  Preparable{
	private Admin admin;
	
	
	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}
	@Autowired
	private StaffManager adminService;
	
	
	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	@Action(value="login",results={ @Result(name = "loginSuc",type="redirectAction",
			params = {"actionName" , "staffList","namespace","/adminpages/staff"})})
	public String login() {
		Admin adminLogin = this.getAdminService().loginAdmin(this.admin);
		if (adminLogin != null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("admin", adminLogin);
			
			String url= (String)session.getAttribute("SOURCE_URL");
			if(url!=null){
				try {
					ServletActionContext.getResponse().sendRedirect(url);
				} catch (IOException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
				return null;
			}else{
			
			return "loginSuc";}
		}
		return INPUT;
	}
	
	@Action("loginout")
	public String loginOut() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		return INPUT;
	}
	public StaffManager getAdminService() {
		return adminService;
	}
	public void setAdminService(StaffManager adminService) {
		this.adminService = adminService;
	}
}
