package com.org.app.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.org.app.config.OffsetBasedPageRequest;
import com.org.app.domain.LoanInfoDetail;
import com.org.app.repository.LoanInfoDetailRepository;
@Service
@Transactional
public class LoanInfoDetailServiceImpl implements LoanInfoDetailService{

	@Autowired(required=true)
	LoanInfoDetailRepository loanInfoDetailRepository;
	

	@Override
	public LoanInfoDetail findById(Long id) {
		// TODO Auto-generated method stub
		 return loanInfoDetailRepository.findOne(id);
	}

	
	
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction,int page, int limit) {
		Sort sort = null;int offset=0;
		if (direction.equals("ASC")) {
		sort = new Sort(new Sort.Order(Direction.ASC, orderBy));
		}
		if (direction.equals("DESC")) {
		sort = new Sort(new Sort.Order(Direction.DESC, orderBy));
		}
		if(page==0)
			page=1;
		
		offset=limit * (page - 1);
		
		Pageable pageable = new OffsetBasedPageRequest(offset, limit,sort);
	Page<LoanInfoDetail> data = loanInfoDetailRepository.findAllByActiveIndicator(true,pageable);
	return data;
	}



	@Override
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int limit,Long borrowerId,
			String fromDate, String toDate) {
		Sort sort = null;int offset=0;
		if (direction.equals("ASC")) {
		sort = new Sort(new Sort.Order(Direction.ASC, orderBy));
		}
		if (direction.equals("DESC")) {
		sort = new Sort(new Sort.Order(Direction.DESC, orderBy));
		}
		if(page==0)
			page=1;
		
		offset=limit * (page - 1);
		
		Pageable pageable = new OffsetBasedPageRequest(offset, limit,sort);
	Page<LoanInfoDetail> data = loanInfoDetailRepository.findAllByActiveIndicator(true,borrowerId,fromDate,toDate,pageable);
	return data;
	}
	
	@Override
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int limit,Long borrowerId,
			String fromDate) {
		Sort sort = null;int offset=0;
		if (direction.equals("ASC")) {
		sort = new Sort(new Sort.Order(Direction.ASC, orderBy));
		}
		if (direction.equals("DESC")) {
		sort = new Sort(new Sort.Order(Direction.DESC, orderBy));
		}
		if(page==0)
			page=1;
		
		offset=limit * (page - 1);
		
		Pageable pageable = new OffsetBasedPageRequest(offset, limit,sort);
	Page<LoanInfoDetail> data = loanInfoDetailRepository.findAllByActiveIndicator(true,borrowerId,fromDate,pageable);
	return data;
	}
	@Override
	public Page<LoanInfoDetail> findAllByActiveIndicator(String orderBy, String direction, int page, int limit,
			String fromDate) {
		Sort sort = null;int offset=0;
		if (direction.equals("ASC")) {
		sort = new Sort(new Sort.Order(Direction.ASC, orderBy));
		}
		if (direction.equals("DESC")) {
		sort = new Sort(new Sort.Order(Direction.DESC, orderBy));
		}
		if(page==0)
			page=1;
		
		offset=limit * (page - 1);
		
		Pageable pageable = new OffsetBasedPageRequest(offset, limit,sort);
	Page<LoanInfoDetail> data = loanInfoDetailRepository.findAllByActiveIndicator(true,fromDate,pageable);
	return data;
	}
	
	}


