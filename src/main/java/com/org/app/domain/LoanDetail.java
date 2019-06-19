

			
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
	@Table(name = "loan_detail", uniqueConstraints = { @UniqueConstraint(columnNames = { }) })
	public class LoanDetail extends Auditable  implements Serializable {
		private static final long serialVersionUID = 1L;

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;

	
		@Column(name="interest")
		private double interest;
		
		
		@Column(name="amount")
		private Long amount;
		
	
		@Column(name="no_of_dues")
		private Integer noOfDues;
		
		
		@Column(name = "borrow_date")
		private Date borrowDate;
		
		
		@Column(name="due_amount")
		private Long dueAmount;

		
		@Column(name = "due_date")
		private Date dueDate;
		
		@Column(name = "guarantee_name")
		private String guaranteeName;
		
		@Column(name = "mobile")
		private Long mobile;		

		@Column(name = "presentAddress")
		private String presentAddress;
		
		
		@Column(name = "preAddPincode")
		private Long preAddPincode;
		
		
		@Column(name = "id_proof_full_path")
		private String idProofFullPath;
			
		
		@ManyToOne(cascade={CascadeType.ALL})
		@JoinColumn(name = "borrower_id", referencedColumnName = "id")
		private Borrower borrower;
		
		@Column(name = "active_indicator",nullable = false, columnDefinition = "TINYINT(1)")
		private Boolean activeIndicator;


		private transient MultipartFile[] files;
		
		private transient Long borrowerId;


		public Long getId() {
			return id;
		}


		public void setId(Long id) {
			this.id = id;
		}


		public double getInterest() {
			return interest;
		}


		public void setInterest(double interest) {
			this.interest = interest;
		}


		public Long getAmount() {
			return amount;
		}


		public void setAmount(Long amount) {
			this.amount = amount;
		}


		public Integer getNoOfDues() {
			return noOfDues;
		}


		public void setNoOfDues(Integer noOfDues) {
			this.noOfDues = noOfDues;
		}


		public Date getBorrowDate() {
			return borrowDate;
		}


		public void setBorrowDate(Date borrowDate) {
			this.borrowDate = borrowDate;
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


		public String getGuaranteeName() {
			return guaranteeName;
		}


		public void setGuaranteeName(String guaranteeName) {
			this.guaranteeName = guaranteeName;
		}


		public Long getMobile() {
			return mobile;
		}


		public void setMobile(Long mobile) {
			this.mobile = mobile;
		}


		public String getPresentAddress() {
			return presentAddress;
		}


		public void setPresentAddress(String presentAddress) {
			this.presentAddress = presentAddress;
		}


		public Long getPreAddPincode() {
			return preAddPincode;
		}


		public void setPreAddPincode(Long preAddPincode) {
			this.preAddPincode = preAddPincode;
		}




		public String getIdProofFullPath() {
			return idProofFullPath;
		}


		public void setIdProofFullPath(String idProofFullPath) {
			this.idProofFullPath = idProofFullPath;
		}


		public Boolean getActiveIndicator() {
			return activeIndicator;
		}


		public void setActiveIndicator(Boolean activeIndicator) {
			this.activeIndicator = activeIndicator;
		}


		public MultipartFile[] getFiles() {
			return files;
		}


		public void setFiles(MultipartFile[] files) {
			this.files = files;
		}


		public static long getSerialversionuid() {
			return serialVersionUID;
		}


		public Borrower getBorrower() {
			return borrower;
		}


		public void setBorrower(Borrower borrower) {
			this.borrower = borrower;
		}


		public Long getBorrowerId() {
			return borrowerId;
		}


		public void setBorrowerId(Long borrowerId) {
			this.borrowerId = borrowerId;
		}



		
	}