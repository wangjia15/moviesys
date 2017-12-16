package com.wjapp.action;
import java.io.IOException;
import java.util.List;

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
import com.wjapp.service.CustomerManager;
import com.wjapp.service.StaffManager;
import com.wjapp.service.StoreManager;
import com.wjapp.beans.Customer;
import com.wjapp.beans.Store;




@SuppressWarnings("serial")

@ParentPackage("struts-default")  
@Namespace("/frontpages")    
@Results({  

    @Result(name = "error", location = "/frontpages/staff/errorStaff.jsp"),
    @Result(name = "input", location = "/frontpages/login.jsp")  
})
public class CustomerServiceAction extends ActionSupport  implements  Preparable{
	private Customer customer;
	
	
	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}
	@Autowired
	private CustomerManager customerService;
	

	
	
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer admin) {
		this.customer = admin;
	}
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	@Action(value="login",results={ @Result(name = "loginSuc",type="redirectAction",
			params = {"actionName" , "index","namespace","/frontpages"})})
	public String login() {
		Customer adminLogin = this.customerService.loginAdmin(this.customer);
		if (adminLogin != null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("customer", adminLogin);
			
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
		session.removeAttribute("customer");
		return INPUT;
	}
	
	@Action(value="register",results= { @Result(name = "success", type="redirectAction",
			params = {"actionName" , "index","namespace","/frontpages"})})

	public String register() throws Exception {
	  int i = 	customerService.save(customer);
		
		if(i>0){
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("customer", customer);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	
	

	
	
	
	public CustomerManager getCustomerService() {
		return customerService;
	}
	public void setCustomerService(CustomerManager customerService) {
		this.customerService = customerService;
	}


}
