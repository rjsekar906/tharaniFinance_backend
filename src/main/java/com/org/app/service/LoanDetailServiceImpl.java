package com.org.app.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.org.app.config.OffsetBasedPageRequest;
import com.org.app.domain.LoanDetail;
import com.org.app.repository.LoanDetailRepository;
@Service
@Transactional
public class LoanDetailServiceImpl implements LoanDetailService{

	@Autowired(required=true)
	LoanDetailRepository loanDetailRepository;
	

	@Override
	public LoanDetail findById(Long id) {
		// TODO Auto-generated method stub
		 return loanDetailRepository.findOne(id);
	}

	
	
	public Page<LoanDetail> findAllByActiveIndicator(String orderBy, String direction,int page, int limit) {
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
	Page<LoanDetail> data = loanDetailRepository.findAllByActiveIndicator(true,pageable);
	return data;
	}
	
	}


