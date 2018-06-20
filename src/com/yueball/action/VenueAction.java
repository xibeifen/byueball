package com.yueball.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.Venue;
import com.yueball.service.VenueService;

public class VenueAction extends ActionSupport implements ModelDriven<Venue> {
	private Venue venue=new Venue();
	private VenueService venueService;
	private List<Venue> venueList;

	public void setVenueService(VenueService venueService) {
		this.venueService = venueService;
	}

	public List<Venue> getVenueList() {
		return venueList;
	}

	/*public void setVenueList(List<Venue> venueList) {
		this.venueList = venueList;
	}*/

	@Override
	public Venue getModel() {
		// TODO Auto-generated method stub
		return venue;
	}
	
	//��ѯ�����򳡵���Ϣ
	public String findInfo(){
		venueList=venueService.findInfo();
		//System.out.println(venueList.size());��
		ActionContext.getContext().getValueStack().push(venueList);
		return "findAllVenue";
	}
	
	//����id��ѯ��
	public String findById(){
		venue=venueService.findById(venue.getVenueId());
		return "goEditVenue";
	}

}
