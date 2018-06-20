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
	
	//ͨ��ѡ��ĳ��غ����ڣ��ҳ���ʱ�˵صĶ�����ͬһ��ͬһ���صĶ������������
	//�ֱ��Ӧ����ʱ��Σ�ÿ��ʱ��ο����ж���Ҳ����û��
	public String findOrder() throws ParseException{
		//���ص�id
		//System.out.println("orderactionִ���ˣ�order�ĳ���id��"+order.getVenueId().getDictId());
		//���ڵ�ֵ
		//System.out.println("ѡ���������"+getOrDate());
		String dateStr = getOrDate();  
        //���SimpleDateFormat�࣬����ת��Ϊyyyy-MM-dd��ʱ���ʽ  
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");   
        //ʹ��SimpleDateFormat��parse()��������Date  
        Date odate = sf.parse(dateStr);    
		orderList=orderService.findByVenueDate(order,odate);
		System.out.println("������"+orderList.size()+"��������¼");
			
		return "orderInfo";
	}
	
	//��ø�ʽ������������
	 public static String getDateAfter(Date d,int day){  
		   Calendar now =Calendar.getInstance();  
		   now.setTime(d);  
		   now.set(Calendar.DATE,now.get(Calendar.DATE)+day);  	   
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");  
		   return sdf.format(now.getTime());  
		  }  
	
	//���붩��ҳ��
	public String addOrder(){
		List<String> dateList=new ArrayList<String>();
		for(int i=0;i<7;i++)
			dateList.add(getDateAfter(new Date(),i));
		
		//System.out.println("ִ����action");
		
		ServletActionContext.getRequest().setAttribute("dateList",dateList);
		return "addOrder";
	}
	
	//���涩������ȷ���ö�����ȷ�϶���
	public String saveOrder() throws ParseException{
		
		String dateStr = getOrDate();  
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");   
        Date odate = sf.parse(dateStr); 
        order.setOrderDate(odate);
        
        //�˴�����֤����teamOne����teamTwo
//        Integer orderTeamid=getOrderTeamId() ;
//        team.setTeamId(orderTeamid);
//        order.setTeamOne(team);
        
        orderService.saveOrder(order);
		
		return "submitSuccess";
	}
}
