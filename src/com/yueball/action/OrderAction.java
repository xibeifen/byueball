package com.yueball.action;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.Order;
import com.yueball.entity.Team;
import com.yueball.service.OrderService;

public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	private Order order=new Order();
	private OrderService orderService;
	private List<Order> orderList;
	private String orDate;	
	private String startTimea;

	public String getStartTimea() {
		return startTimea;
	}

	public void setStartTimea(String startTimea) {
		this.startTimea = startTimea;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public String getOrDate() {
		return orDate;
	}

	public void setOrDate(String orDate) {
		this.orDate = orDate;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}
	
	//通过选择的场地和日期，找出此时此地的订单，同一天同一场地的订单最多有三个
	//分别对应三个时间段，每个时间段可能有订单也可能没有
	public String findOrder() throws ParseException{
		//场地的id
		//System.out.println("orderaction执行了，order的场地id是"+order.getVenueId().getDictId());
		//日期的值
		//System.out.println("选择的日期是"+getOrDate());
		String dateStr = getOrDate();  
        //获得SimpleDateFormat类，我们转换为yyyy-MM-dd的时间格式  
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");   
        //使用SimpleDateFormat的parse()方法生成Date  
        Date odate = sf.parse(dateStr);    
		orderList=orderService.findByVenueDate(order,odate);
		System.out.println("发现了"+orderList.size()+"条订单记录");
			
		return "orderInfo";
	}
	
	//获得格式化后七天日期
	 public static String getDateAfter(Date d,int day){  
		   Calendar now =Calendar.getInstance();  
		   now.setTime(d);  
		   now.set(Calendar.DATE,now.get(Calendar.DATE)+day);  	   
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");  
		   return sdf.format(now.getTime());  
		  }  
	
	//进入订单页面
	public String addOrder(){
		List<String> dateList=new ArrayList<String>();
		for(int i=0;i<7;i++)
			dateList.add(getDateAfter(new Date(),i));
		
		//System.out.println("执行了action");
		
		ServletActionContext.getRequest().setAttribute("dateList",dateList);
		return "addOrder";
	}
	
	//保存订单，即确定好订单后确认订单
	public String saveOrder() throws ParseException{
		
		String dateStr = getOrDate();  
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");   
        Date odate = sf.parse(dateStr); 
        order.setOrderDate(odate);
        
        //此处需验证放入teamOne还是teamTwo
//        Integer orderTeamid=getOrderTeamId() ;
//        team.setTeamId(orderTeamid);
//        order.setTeamOne(team);
        
        orderService.saveOrder(order);
		
		return "submitSuccess";
	}
}
