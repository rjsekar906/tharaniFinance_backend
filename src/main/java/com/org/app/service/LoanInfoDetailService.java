package com.org.app.service;

import org.springframework.data.domain.Page;

import com.org.app.domain.LoanInfoDetail;

public interface LoanInfoDetailService {
	
	public LoanInfoDetail findById(Long id);
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int size);
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int sizee,Long borrowerId,String fromDate,String toDate);
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int sizee,Long borrowerId,String fromDate);

	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int sizee,String fromDate);

}
