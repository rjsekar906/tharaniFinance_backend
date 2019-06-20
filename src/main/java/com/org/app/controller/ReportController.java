package com.org.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.org.app.domain.LoanInfoDetail;
import com.org.app.pagination.Direction;
import com.org.app.pagination.OrderBy;
import com.org.app.pagination.PaginationSortingException;
import com.org.app.repository.LoanDetailRepository;
import com.org.app.repository.LoanInfoDetailRepository;
import com.org.app.service.BorrowerService;
import com.org.app.service.LoanDetailService;
import com.org.app.service.LoanInfoDetailService;

@RestController
@RequestMapping("/loanInfoReport")
public class ReportController {

	@Autowired(required = true)
	LoanInfoDetailService loanInfoDetailService;

	
	
	@RequestMapping(value = "/loanInfoDetailList", params = { "orderBy", "direction", "page",
			"size","borrowerId","fromDate", "toDate", }, method = RequestMethod.GET)
	@ResponseBody
	public Page<LoanInfoDetail> LoanDetailList(@RequestParam("orderBy") String orderBy,
			@RequestParam("direction") String direction, @RequestParam("page") int page,
			@RequestParam("size") int size,@RequestParam("borrowerId") Long borrowerId,@RequestParam("fromDate") Date fromDate,
			@RequestParam("toDate") Date toDate) {
		Page<LoanInfoDetail> list =null;
		if (!(direction.equals(Direction.ASCENDING.getDirectionCode())
				|| direction.equals(Direction.DESCENDING.getDirectionCode()))) {
			throw new PaginationSortingException("Invalid sort direction");
		}
		if (!(orderBy.equals(OrderBy.ID.getOrderByCode()))) {
			throw new PaginationSortingException("Invalid orderBy condition");
		}

		SimpleDateFormat newFormat = new SimpleDateFormat("yyyy-MM-dd");
		String outputFromDate = "";
		String outputToDate ="";
		if(fromDate!=null && toDate!=null){
		outputFromDate = newFormat.format(fromDate);
		outputToDate = newFormat.format(toDate);
		}
		
		if(borrowerId!=0&&outputFromDate!=null&&outputToDate!=null)
		list = loanInfoDetailService.findAllByActiveIndicator(orderBy, direction, page, size,borrowerId,outputFromDate,outputToDate);
		else if(borrowerId!=0 && outputFromDate!=null&&(outputToDate==null||outputToDate==""))
			list = loanInfoDetailService.findAllByActiveIndicator(orderBy, direction, page, size,borrowerId,outputFromDate);
		else if(borrowerId==0 && outputFromDate!=null&&(outputToDate==null||outputToDate==""))
			list = loanInfoDetailService.findAllByActiveIndicator(orderBy, direction, page, size,outputFromDate);			
	
		else
			list = loanInfoDetailService.findAllByActiveIndicator(orderBy, direction, page, size);
		return list;
		

	}

	

}
