package com.wjapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wjapp.beans.Payment;
import com.wjapp.beans.Saleinfo;
import com.wjapp.beans.Staff;
import com.wjapp.beans.Store;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Customer;
import com.wjapp.beans.Language;
import com.wjapp.service.CountryManager;
import com.wjapp.service.PaymentManager;
import com.wjapp.service.CityManager;
import com.wjapp.service.StoreManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/payment")    
@Results({  
    @Result(name = "success", location = "/adminpages/payment/paymentList.jsp"),
    @Result(name = "error", location = "/adminpages/payment/errorPayment.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/payment/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class PaymentAction extends ActionSupport implements ModelDriven<Payment>, Preparable {
	
	private static final Logger log = Logger.getLogger(PaymentAction.class);
	private Integer id;
	
	
	private Integer storeid;
	
	private Payment payment;
	private List<Payment> paymentList;
	
	private List<Customer> customerList;

	
	
	private List<Staff> staffList;
	
	
	private List<Saleinfo> saleinfoList;
	
	@Autowired
	private PaymentManager PaymentManager;
	
	@Autowired
	private StoreManager StoreManager;
	

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment Payment) {
		this.payment = Payment;
	}

	public List<Payment> getPaymentList() {
		
		if(paymentList==null){
			paymentList = new ArrayList<Payment>();
		}
		return paymentList;
	}

	public void setPaymentList(List<Payment> PaymentList) {
		this.paymentList = PaymentList;
	}
	
    public Payment getModel() {  
        if (null != id) {  
        	payment = PaymentManager.get(id);  
        } else {  
        	payment = new Payment();  
        }  
        return payment;  
    }  

	@Override
	@Action("paymentList")
	public String execute() throws Exception {
		
		log.info("查询支付信息");
		paymentList = PaymentManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("PaymentList", PaymentList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getPaymentByStore",results={ @Result(name = "success", location = "/adminpages/payment/paymentList.jsp")})
	public String getPaymentByStore() throws Exception {
		
		log.info("查询store信息"+id);
	 // Set<Payment> list = 	StoreManager.get(id).getPayments();
	  
	 // log.info("大小"+list.size());
	  
	  //getPaymentList().addAll(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getCustomerByPayment",results={ @Result(name = "success", location = "/adminpages/customer/customerList.jsp")})
	public String getCustomerByPayment() throws Exception {
		
		log.info("查询store信息"+id);
	  Customer c = 	PaymentManager.get(id).getCustomer();
	  
	 
	  
	  getCustomerList().add(c);



		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getStaffByPayment",results={ @Result(name = "success", location = "/adminpages/staff/staffList.jsp")})
	public String getStaffByPayment() throws Exception {
		
		log.info("查询store信息"+id);
	  Staff c = 	PaymentManager.get(id).getStaff();
	  
	 
	  
	  getStaffList().add(c);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getSaleByPayment",results={ @Result(name = "success", location = "/adminpages/saleinfo/saleinfoList.jsp")})
	public String getSaleByPayment() throws Exception {
		
		log.info("查询store信息"+id);
	  Saleinfo c = 	PaymentManager.get(id).getSaleinfo();
	  
	 
	  
	  getSaleinfoList().add(c);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	
	
	
	
	
	@Action(value="addPayment",
			results={ @Result(name = "input", location = "/adminpages/payment/addPayment.jsp"),
					@Result(name = "success", location = "/adminpages/payment/addPayment.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="savePayment",results={ @Result(name = "input", location = "/adminpages/payment/addPayment.jsp")})
	public String savePayment() throws Exception {
		
		log.info("添加支付信息");
		
//		Store c = StoreManager.get(getStoreid());
//		
//		payment.setStore(c);
//		
		
		
		int i = PaymentManager.save(this.payment).intValue();
		
		//log.info("countyr:"+payment.getPaymentName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updatePayment",results={ @Result(name = "success", location = "/adminpages/payment/saveSuccess.jsp")})

	public String updatePayment() throws Exception {
		
		log.info("更新支付信息");
		
//	Store c = StoreManager.get(getStoreid());
//		
//		payment.setStore(c);
		
		
		PaymentManager.saveOrUpdate(this.payment);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deletePayment",results={ @Result(name = "success", location = "/adminpages/payment/saveSuccess.jsp")})
	public String DeletePayment() throws Exception {
		
		log.info("删除支付信息");
		 PaymentManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editPayment",results={ @Result(name = "success", location = "/adminpages/payment/editPayment.jsp")})
	public String eidtPayment() throws Exception {
		
		log.info("编辑支付信息");
		payment = PaymentManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Payment", Payment);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		
		List<Store>  storeList = StoreManager.findAll();
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
			requestList.put("StoreList", storeList);

		
	}




	public StoreManager getStoreManager() {
		return StoreManager;
	}

	public void setStoreManager(StoreManager storeManager) {
		StoreManager = storeManager;
	}

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}

	public List<Customer> getCustomerList() {
		if(customerList==null){
			customerList = new ArrayList<Customer>();
		}
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}

	public List<Staff> getStaffList() {
		if(staffList==null){
			staffList = new ArrayList<Staff>();
		}
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}

	public List<Saleinfo> getSaleinfoList() {
		if(saleinfoList==null){
			saleinfoList = new ArrayList<Saleinfo>();
		}
		return saleinfoList;
	}

	public void setSaleinfoList(List<Saleinfo> saleinfoList) {
		this.saleinfoList = saleinfoList;
	}







	

}
