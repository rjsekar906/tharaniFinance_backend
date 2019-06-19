package com.org.app.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.org.app.domain.Borrower;
import com.org.app.domain.LoanDetail;
import com.org.app.domain.LoanInfoDetail;
import com.org.app.pagination.Direction;
import com.org.app.pagination.OrderBy;
import com.org.app.pagination.PaginationSortingException;
import com.org.app.repository.LoanDetailRepository;
import com.org.app.repository.LoanInfoDetailRepository;
import com.org.app.service.BorrowerService;
import com.org.app.service.LoanDetailService;

@RestController
@RequestMapping("/loanDetail")
public class LoanDetailController {

	@Autowired(required = true)
	LoanDetailService loanDetailService;

	@Autowired(required = true)
	LoanDetailRepository loanDetailRepository;
	
	@Autowired(required = true)
	LoanInfoDetailRepository loanInfoDetailRepository;
	
	@Autowired(required = true)
	BorrowerService BorrowerService;

	private static final String FILE_DIRECTORY = "c:\\loan\\";

	@RequestMapping(value = "/saveLoanDetail", method = RequestMethod.POST, produces = "application/json")
	public ResponseEntity<HashMap> saveLoanDetail(@RequestBody LoanDetail loanDetail) throws Exception {
		HashMap map = new HashMap();
		Borrower borrower=new Borrower();
		try {
			if (loanDetail != null) {
				
				if (loanDetail.getId() != null) {
					map.put("message", "Successfully Updated");
					loanDetail.setLastModifiedDate(new Date());
					loanDetail.setCreatedBy("Admin");
				} else {
					loanDetail.setLastModifiedBy("Admin");
					loanDetail.setCreatedDate(new Date());
					if (loanDetail.getBorrowerId()==null&&loanDetail.getBorrowerId() == null) {
					String userIdFolder=String.valueOf(loanDetail.getBorrowerId());
					
                  	if(borrower.getId()==null){
    					Path filePathProof = Paths.get(FILE_DIRECTORY+userIdFolder+ File.separator  +"Guarantee" +File.separator + borrower.getFiles()[0].getOriginalFilename());

    					Files.copy(borrower.getFiles()[0].getInputStream(), filePathProof, StandardCopyOption.REPLACE_EXISTING);
    					borrower.setIdProofFullPath(FILE_DIRECTORY+	userIdFolder+ File.separator  +"Guarantee" +File.separator +  borrower.getFiles()[0].getOriginalFilename());
    					}
					}
					map.put("message", "Successfully Created");
				}
				if (loanDetail.getBorrowerId() != null) {
					borrower = BorrowerService.findById(loanDetail.getBorrowerId());
				 
				}
				loanDetail.setBorrower(borrower);
				loanDetail.setActiveIndicator(true);
				loanDetailRepository.save(loanDetail);
				if(loanDetail.getNoOfDues()!=0 && loanDetail.getNoOfDues()!=null){
					for(int i=0;i<=loanDetail.getNoOfDues()-1;i++){
					LoanInfoDetail loaninfoDetail =new LoanInfoDetail();
					loaninfoDetail.setActiveIndicator(true);
					loaninfoDetail.setIsAmountPaid(false);
					loaninfoDetail.setDueAmount(loanDetail.getDueAmount());
					//loaninfoDetail.setDueDate(loanDetail.getDueDate());
					loaninfoDetail.setDueDate(new Date());
					DateUtil dateUtil=new DateUtil();
					//loaninfoDetail.setPayDate(dateUtil.addDays(loanDetail.getBorrowDate(), 1));
					loaninfoDetail.setPayDate(dateUtil.addDays(new Date(), 1));
					loaninfoDetail.setLoanDetail(loanDetail);
					loaninfoDetail.setBorrower(borrower);
					loanInfoDetailRepository.save(loaninfoDetail);
					}
				}

				return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
			} else {
				map.put("message", "No Borrower Found");

				return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("message", "Not Created" + e.getMessage());

			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		}

	}
	
	public class DateUtil
	{
	    public Date addDays(Date date, int month)
	    {
	        Calendar cal = Calendar.getInstance();
	        cal.setTime(date);
	        cal.add(Calendar.MONTH, month); //minus number would decrement the days
	        return cal.getTime();
	    }
	}

	@RequestMapping(value = "/loanDetailList", params = { "orderBy", "direction", "page",
			"size" }, method = RequestMethod.GET)
	@ResponseBody
	public Page<LoanDetail> LoanDetailList(@RequestParam("orderBy") String orderBy,
			@RequestParam("direction") String direction, @RequestParam("page") int page,
			@RequestParam("size") int size) {
		if (!(direction.equals(Direction.ASCENDING.getDirectionCode())
				|| direction.equals(Direction.DESCENDING.getDirectionCode()))) {
			throw new PaginationSortingException("Invalid sort direction");
		}
		if (!(orderBy.equals(OrderBy.ID.getOrderByCode()))) {
			throw new PaginationSortingException("Invalid orderBy condition");
		}
		Page<LoanDetail> list = loanDetailService.findAllByActiveIndicator(orderBy, direction, page, size);
		return list;

	}

	@RequestMapping(value = "/deleteLoanDetail", method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<HashMap> delete(@RequestParam("id") Long Id) {
		HashMap map = new HashMap();
		try {
			if (Id != null) {
				LoanDetail LoanDetail = loanDetailService.findById(Id);
				loanDetailRepository.inActive(false, LoanDetail.getId());
				map.put("message", "Record Deleted Successfully ");
			}
			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		} catch (Exception e) {
			map.put("message", "Not Deleted  " + e.getMessage());

			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		}

	}
	
	@RequestMapping(value = "/getLoanById", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<LoanDetail> getLoanById(@RequestParam("id") Long Id) {
		try {
			LoanDetail LoanDetail  = null;
			if (Id != null) {
				LoanDetail = loanDetailService.findById(Id);
			}
			return new ResponseEntity<LoanDetail>(LoanDetail, null, HttpStatus.OK);
		} catch (Exception e) {

			return new ResponseEntity<LoanDetail>(null, null, HttpStatus.OK);
		}
	}

}
