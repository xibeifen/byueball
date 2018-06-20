package com.yueball.service.Impl;

import java.util.List;

import com.yueball.dao.VenueDao;
import com.yueball.entity.Venue;
import com.yueball.service.VenueService;

public class VenueServiceImpl implements VenueService {
	private VenueDao venueDao;

	public void setVenueDao(VenueDao venueDao) {
		this.venueDao = venueDao;
	}

	@Override
	public List<Venue> findInfo() {
		// TODO Auto-generated method stub
		return venueDao.findInfo();
	}

	@Override
	public Venue findById(Integer venueId) {
		// TODO Auto-generated method stub
		return venueDao.findById(venueId);
	}

}
