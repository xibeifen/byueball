package com.yueball.service;

import java.util.List;

import com.yueball.entity.Venue;

public interface VenueService {
	List<Venue> findInfo();
	Venue findById(Integer venueId);

}
