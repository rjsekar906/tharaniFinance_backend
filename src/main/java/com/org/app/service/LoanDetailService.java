package com.org.app.service;

import org.springframework.data.domain.Page;

import com.org.app.domain.LoanDetail;

public interface LoanDetailService {
	
	public LoanDetail findById(Long id);
	public Page<LoanDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int size);


}
