package com.org.app.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.web.multipart.MultipartFile;

import com.org.app.model.audit.Auditable;

/**
 * Created by basker ammu
 */

@Entity
@Table(name = "borrower", uniqueConstraints = { @UniqueConstraint(columnNames = { "mobile"})})
public class Borrower extends Auditable  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "name")
	private String name;
	
	@NumberFormat(pattern = "#")
	@Column(name = "mobile")
	private Long mobile;


	@Column(name = "father_husband_name")
	private String fatherHusbandName;	

	@Column(name = "membership")
	private String membership;
	


	
	@Column(name = "presentAddress")
	private String presentAddress;
	
	

	@Column(name = "preAddPincode")
	private Long preAddPincode;
	
	
	@Column(name = "permanentAddress")
	private String permanentAddress;
	
	
	@Column(name = "perAddPincode")
	private Long perAddPincode;
	

	@Column(name = "officeAddress")
	private String officeAddress;


	@Column(name = "officePincode")
	private Long officePincode;
	

	@Column(name = "profile_photo_full_path")
	private String profilePhotoFullPath;

	
	@Column(name = "id_proof_full_path")
	private String idProofFullPath;
	
	@Column(name = "active_indicator",nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean activeIndicator;

	
	
	private boolean sameAsPresentAddress;
	


	private transient MultipartFile[] files;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getMobile() {
		return mobile;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

	public String getFatherHusbandName() {
		return fatherHusbandName;
	}

	public void setFatherHusbandName(String fatherHusbandName) {
		this.fatherHusbandName = fatherHusbandName;
	}

	public String getMembership() {
		return membership;
	}

	public void setMembership(String membership) {
		this.membership = membership;
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

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public Long getPerAddPincode() {
		return perAddPincode;
	}

	public void setPerAddPincode(Long perAddPincode) {
		this.perAddPincode = perAddPincode;
	}

	public String getOfficeAddress() {
		return officeAddress;
	}

	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}

	public Long getOfficePincode() {
		return officePincode;
	}

	public void setOfficePincode(Long officePincode) {
		this.officePincode = officePincode;
	}

	public String getProfilePhotoFullPath() {
		return profilePhotoFullPath;
	}

	public void setProfilePhotoFullPath(String profilePhotoFullPath) {
		this.profilePhotoFullPath = profilePhotoFullPath;
	}

	public String getIdProofFullPath() {
		return idProofFullPath;
	}

	public void setIdProofFullPath(String idProofFullPath) {
		this.idProofFullPath = idProofFullPath;
	}

	public MultipartFile[] getFiles() {
		return files;
	}

	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}

	public boolean isSameAsPresentAddress() {
		return sameAsPresentAddress;
	}

	public void setSameAsPresentAddress(boolean sameAsPresentAddress) {
		this.sameAsPresentAddress = sameAsPresentAddress;
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
