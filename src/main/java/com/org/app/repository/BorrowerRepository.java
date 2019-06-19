package com.org.app.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.org.app.domain.Borrower;

/**
 * Created by basker ammu
 */
@Repository
public interface BorrowerRepository extends JpaRepository<Borrower, Long> {
	
	 Optional<Borrower> findById(Long id);

	Page<Borrower> findAllByActiveIndicator(boolean status, Pageable pageable);
	
	
	 @Modifying(clearAutomatically = true)
		@Transactional
		@Query("update Borrower e set e.activeIndicator = :activeIndicator where e.id = :id")
		void inActive(@Param("activeIndicator") boolean activeIndicator,@Param("id") Long id);
	 
	 Optional<Borrower> findByMobile(Long mobile);
	 
	 
	 
	
}
