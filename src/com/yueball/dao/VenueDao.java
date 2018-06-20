package com.yueball.dao;

import java.util.List;

import com.yueball.entity.Venue;

public interface VenueDao {
	List<Venue> findInfo();
	Venue findById(Integer venueId);
}
