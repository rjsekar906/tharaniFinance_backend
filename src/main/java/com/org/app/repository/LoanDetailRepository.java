package com.org.app.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.org.app.domain.LoanDetail;

@Repository
public interface LoanDetailRepository extends JpaRepository<LoanDetail, Long>{
	
	public LoanDetail findById(@Param("id") Long id);

	public Page<LoanDetail> findAllByActiveIndicator(boolean status, Pageable pageable);

	
	 @Modifying(clearAutomatically = true)
		@Transactional
		@Query("update LoanDetail c set c.activeIndicator = :activeIndicator where c.id = :id")
		void inActive(@Param("activeIndicator") Boolean activeIndicator,@Param("id") Long id);

	 @Query("select ld from LoanDetail ld where ld.activeIndicator=:activeIndicator and ld.borrower.id=:empId")
	  Page<LoanDetail> findAllEmpId(@Param("activeIndicator") Boolean activeIndicator,@Param("empId") Long empId, Pageable pageable);


}
