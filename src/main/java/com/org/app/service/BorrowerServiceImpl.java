package com.org.app.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.org.app.config.OffsetBasedPageRequest;
import com.org.app.domain.Borrower;
import com.org.app.repository.BorrowerRepository;
@Service
@Transactional
public class BorrowerServiceImpl implements BorrowerService{

	@Autowired(required=true)
	BorrowerRepository borrowersRepository;
	
	
	@Override
	public Borrower findById(Long id) {
		// TODO Auto-generated method stub
		 return borrowersRepository.findOne(id);
	}


	@Override
	public Page<Borrower> findAllByActiveIndicator(String orderBy, String direction,int page, int limit) {
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
		Page<Borrower> data = borrowersRepository.findAllByActiveIndicator(true,pageable);
		return data;
	}


	@Override
	public Boolean findByMobile(Long mobileNo) {
		// TODO Auto-generated method stub
		Boolean isMobileNumberAvailbale = borrowersRepository.findByMobile(mobileNo).isPresent();
		return isMobileNumberAvailbale;
	}
	
	

	

}
