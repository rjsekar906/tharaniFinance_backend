

			
	package com.org.app.domain;

	import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.springframework.web.multipart.MultipartFile;

import com.org.app.model.audit.Auditable;

	/**
	 * created by basker ammu
	 * 
	 */
	@Entity
	@Table(name = "loan_info_detail", uniqueConstraints = { @UniqueConstraint(columnNames = { }) })
	public class LoanInfoDetail extends Auditable  implements Serializable {
		private static final long serialVersionUID = 1L;

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;

	
		@Column(name="due_amount")
		private Long dueAmount;
		
	
		@Column(name="due_date")
		private Date dueDate;
		
		
		@Column(name = "pay_date")
		private Date payDate;
		
		@ManyToOne(cascade={CascadeType.ALL})
		@JoinColumn(name = "borrower_id", referencedColumnName = "id")
		private Borrower borrower;
		
		
		@ManyToOne(cascade={CascadeType.ALL})
		@JoinColumn(name = "loan_detail_id", referencedColumnName = "id")
		private LoanDetail loanDetail;
		
		@Column(name = "is_amount_paid",nullable = false, columnDefinition = "TINYINT(1)")
		private Boolean isAmountPaid;
		
		@Column(name = "active_indicator",nullable = false, columnDefinition = "TINYINT(1)")
		private Boolean activeIndicator;

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public Long getDueAmount() {
			return dueAmount;
		}

		public void setDueAmount(Long dueAmount) {
			this.dueAmount = dueAmount;
		}

		public Date getDueDate() {
			return dueDate;
		}

		public void setDueDate(Date dueDate) {
			this.dueDate = dueDate;
		}

		public Date getPayDate() {
			return payDate;
		}

		public void setPayDate(Date payDate) {
			this.payDate = payDate;
		}

	

		public Borrower getBorrower() {
			return borrower;
		}

		public void setBorrower(Borrower borrower) {
			this.borrower = borrower;
		}

		public LoanDetail getLoanDetail() {
			return loanDetail;
		}

		public void setLoanDetail(LoanDetail loanDetail) {
			this.loanDetail = loanDetail;
		}

		public Boolean getIsAmountPaid() {
			return isAmountPaid;
		}

		public void setIsAmountPaid(Boolean isAmountPaid) {
			this.isAmountPaid = isAmountPaid;
		}

		public Boolean getActiveIndicator() {
			return activeIndicator;
		}

		public void setActiveIndicator(Boolean activeIndicator) {
			this.activeIndicator = activeIndicator;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}

		
		

	}