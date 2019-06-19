package com.org.app.service;

import org.springframework.data.domain.Page;

import com.org.app.domain.Borrower;

public interface BorrowerService {
	
	public Borrower findById(Long id);
	public Page<Borrower> findAllByActiveIndicator(String orderBy, String direction, int page, int size);
	
	public Boolean findByMobile(Long mobileNo);
	

}
