package com.org.app.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.org.app.pagination.Direction;
import com.org.app.pagination.OrderBy;
import com.org.app.pagination.PaginationSortingException;
import com.org.app.repository.BorrowerRepository;
import com.org.app.service.BorrowerService;
import com.org.app.service.LoanDetailService;

@RestController
@RequestMapping("/borrower")
public class BorrowerController {

	@Autowired
	private BorrowerRepository borrowerRepository;

	private static final Logger logger = LoggerFactory.getLogger(BorrowerController.class);

	@Autowired(required = true)
	BorrowerService borrowerService;

	@Autowired(required = true)
	LoanDetailService LoanDetailService;
	
	private static final String FILE_DIRECTORY = "c:\\loan\\";


	@RequestMapping(value = "/saveBorrower", method = RequestMethod.POST, produces = "application/json")
	public ResponseEntity<HashMap> saveborrower(@RequestBody Borrower borrower) throws Exception {
		HashMap map = new HashMap();

		try {
			if (borrower != null) {
				
				if (borrower.getId() != null) {
					map.put("message", "Successfully Updated");
					borrower.setLastModifiedDate(new Date());
					borrower.setCreatedBy("Admin");
					
				} else {
					borrower.setLastModifiedBy("Admin");
                    borrower.setCreatedDate(new Date());
            		String userIdFolder=String.valueOf(new Random().nextInt(9));
                    if(borrower.getId()!=null){
    					Path filePathProfile = Paths.get(FILE_DIRECTORY +userIdFolder+ File.separator + borrower.getFiles()[0].getOriginalFilename());

    					Files.copy(borrower.getFiles()[0].getInputStream(), filePathProfile, StandardCopyOption.REPLACE_EXISTING);
    			
    					borrower.setProfilePhotoFullPath(FILE_DIRECTORY+userIdFolder + File.separator  + borrower.getFiles()[0].getOriginalFilename());
    				  }
    					if(borrower.getId()!=null){
    					Path filePathProof = Paths.get(FILE_DIRECTORY+	userIdFolder+ File.separator  + borrower.getFiles()[1].getOriginalFilename());

    					Files.copy(borrower.getFiles()[1].getInputStream(), filePathProof, StandardCopyOption.REPLACE_EXISTING);
    					borrower.setIdProofFullPath(FILE_DIRECTORY+	userIdFolder + File.separator  + borrower.getFiles()[1].getOriginalFilename());
    					}
					map.put("message", "Successfully Created");
				}
				
				

				borrower.setActiveIndicator(true);
				borrowerRepository.save(borrower);

				return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
			} else {
				map.put("message", "No borrower Found");

				return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("message", "Not Created" + e.getMessage());

			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		}

	}


	@RequestMapping(value = "/borrowerList", params = { "orderBy", "direction", "page",
			"size" }, method = RequestMethod.GET)
	@ResponseBody
	public Page<Borrower> borrowerList(@RequestParam("orderBy") String orderBy,
			@RequestParam("direction") String direction, @RequestParam("page") int page,
			@RequestParam("size") int size) {
		Page<Borrower> list =null;
		if (!(direction.equals(Direction.ASCENDING.getDirectionCode())
				|| direction.equals(Direction.DESCENDING.getDirectionCode()))) {
			throw new PaginationSortingException("Invalid sort direction");
		}
		if (!(orderBy.equals(OrderBy.ID.getOrderByCode()))) {
			throw new PaginationSortingException("Invalid orderBy condition");
		}
		
			list = borrowerService.findAllByActiveIndicator(orderBy, direction, page, size);
			return list;
		

	}
	


	@RequestMapping(value = "/deleteborrower", method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<HashMap> delete(@RequestParam("id") Long Id) {
		HashMap map = new HashMap();
		try {
			if (Id != null) {
				Borrower borrower = borrowerService.findById(Id);
				borrowerRepository.inActive(false, borrower.getId());
				map.put("message", "Record Deleted Successfully ");
			}
			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		} catch (Exception e) {
			map.put("message", "Not Deleted  " + e.getMessage());

			return new ResponseEntity<HashMap>(map, null, HttpStatus.OK);
		}

	}

			
	@RequestMapping(value = "/getborrowerById", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Borrower> getborrowerById(@RequestParam("id") Long Id) {
		try {
			Borrower borrower   = null;
			if (Id != null) {
				borrower = borrowerService.findById(Id);
			}
			return new ResponseEntity<Borrower>(borrower, null, HttpStatus.OK);
		} catch (Exception e) {

			return new ResponseEntity<Borrower>(null, null, HttpStatus.OK);
		}
	}
	
	
	@RequestMapping(value = "/mobileNumberExist", method = RequestMethod.GET)
	@ResponseBody
	public Boolean mobileNumberExist(@RequestParam("mobileNo") Long mobileNo) {
		Boolean mobileNoExist=false;
		try {
			if (mobileNo != null) {
				mobileNoExist = borrowerService.findByMobile(mobileNo);
				
			}
			return mobileNoExist;
		} catch (Exception e) {

			return mobileNoExist;
		}

	}
}
