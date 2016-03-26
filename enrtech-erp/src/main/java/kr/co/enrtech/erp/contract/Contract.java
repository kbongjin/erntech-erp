
package kr.co.enrtech.erp.contract;

import kr.co.enrtech.erp.common.code.CommonCodeHandler;
import kr.co.enrtech.erp.common.converter.JsonDateSerializer;
import kr.co.enrtech.erp.common.converter.JsonDateYMDSerializer;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;


/**
 * <pre>
 * 
 * </pre>
 * @author Bongjin Kwon
 * @version 1.0
 */
public class Contract {

	private int contractId;
	private String cnstrctNm;
	private String contractType1;
	private String contractType2;
	private String contractType3;
	private java.util.Date contractDt;
	private String cnstrctWay;
	private String ownCmpnyId;
	private String cnstrctCmpnyId;
	private java.util.Date cnstrctStartDt;
	private java.util.Date cnstrctEndDt;
	private String maintenance;
	private String cnstrctPost;
	private String cnstrctAddr1;
	private String cnstrctAddr2;
	private String cnstrctPhone;
	private String cnstrctPubMnger;
	private String cnstrctRelMnger;
	private String mngTeam;
	private String salesMnger;
	private String cnstrctMnger;
	private String state;
	private java.util.Date regDt;
	private String regUser;
	private java.util.Date uptDt;
	private String uptUser;
	
	private String contractType1Nm;
	private String contractType2Nm;
	private String contractType3Nm;
	private String cnstrctWayNm;
	private String stateNm;
	
	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public Contract() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the contractId
	 */
	public int getContractId() {
		return contractId;
	}

	/**
	 * @param contractId the contractId to set
	 */
	public void setContractId(int contractId) {
		this.contractId = contractId;
	}

	/**
	 * @return the cnstrctNm
	 */
	public String getCnstrctNm() {
		return cnstrctNm;
	}

	/**
	 * @param cnstrctNm the cnstrctNm to set
	 */
	public void setCnstrctNm(String cnstrctNm) {
		this.cnstrctNm = cnstrctNm;
	}

	/**
	 * @return the contractType1
	 */
	public String getContractType1() {
		return contractType1;
	}

	/**
	 * @param contractType1 the contractType1 to set
	 */
	public void setContractType1(String contractType1) {
		this.contractType1 = contractType1;
	}

	/**
	 * @return the contractType2
	 */
	public String getContractType2() {
		return contractType2;
	}

	/**
	 * @param contractType2 the contractType2 to set
	 */
	public void setContractType2(String contractType2) {
		this.contractType2 = contractType2;
	}

	/**
	 * @return the contractType3
	 */
	public String getContractType3() {
		return contractType3;
	}

	/**
	 * @param contractType3 the contractType3 to set
	 */
	public void setContractType3(String contractType3) {
		this.contractType3 = contractType3;
	}

	/**
	 * @return the contractDt
	 */
	@JsonSerialize(using=JsonDateYMDSerializer.class)
	public java.util.Date getContractDt() {
		return contractDt;
	}

	/**
	 * @param contractDt the contractDt to set
	 */
	public void setContractDt(java.util.Date contractDt) {
		this.contractDt = contractDt;
	}

	/**
	 * @return the cnstrctWay
	 */
	public String getCnstrctWay() {
		return cnstrctWay;
	}

	/**
	 * @param cnstrctWay the cnstrctWay to set
	 */
	public void setCnstrctWay(String cnstrctWay) {
		this.cnstrctWay = cnstrctWay;
	}

	/**
	 * @return the ownCmpnyId
	 */
	public String getOwnCmpnyId() {
		return ownCmpnyId;
	}

	/**
	 * @param ownCmpnyId the ownCmpnyId to set
	 */
	public void setOwnCmpnyId(String ownCmpnyId) {
		this.ownCmpnyId = ownCmpnyId;
	}

	/**
	 * @return the cnstrctCmpnyId
	 */
	public String getCnstrctCmpnyId() {
		return cnstrctCmpnyId;
	}

	/**
	 * @param cnstrctCmpnyId the cnstrctCmpnyId to set
	 */
	public void setCnstrctCmpnyId(String cnstrctCmpnyId) {
		this.cnstrctCmpnyId = cnstrctCmpnyId;
	}

	/**
	 * @return the cnstrctStartDt
	 */
	@JsonSerialize(using=JsonDateYMDSerializer.class)
	public java.util.Date getCnstrctStartDt() {
		return cnstrctStartDt;
	}

	/**
	 * @param cnstrctStartDt the cnstrctStartDt to set
	 */
	public void setCnstrctStartDt(java.util.Date cnstrctStartDt) {
		this.cnstrctStartDt = cnstrctStartDt;
	}

	/**
	 * @return the cnstrctEndDt
	 */
	@JsonSerialize(using=JsonDateYMDSerializer.class)
	public java.util.Date getCnstrctEndDt() {
		return cnstrctEndDt;
	}

	/**
	 * @param cnstrctEndDt the cnstrctEndDt to set
	 */
	public void setCnstrctEndDt(java.util.Date cnstrctEndDt) {
		this.cnstrctEndDt = cnstrctEndDt;
	}

	/**
	 * @return the maintenance
	 */
	public String getMaintenance() {
		return maintenance;
	}

	/**
	 * @param maintenance the maintenance to set
	 */
	public void setMaintenance(String maintenance) {
		this.maintenance = maintenance;
	}

	/**
	 * @return the cnstrctPost
	 */
	public String getCnstrctPost() {
		return cnstrctPost;
	}

	/**
	 * @param cnstrctPost the cnstrctPost to set
	 */
	public void setCnstrctPost(String cnstrctPost) {
		this.cnstrctPost = cnstrctPost;
	}

	/**
	 * @return the cnstrctAddr1
	 */
	public String getCnstrctAddr1() {
		return cnstrctAddr1;
	}

	/**
	 * @param cnstrctAddr1 the cnstrctAddr1 to set
	 */
	public void setCnstrctAddr1(String cnstrctAddr1) {
		this.cnstrctAddr1 = cnstrctAddr1;
	}

	/**
	 * @return the cnstrctAddr2
	 */
	public String getCnstrctAddr2() {
		return cnstrctAddr2;
	}

	/**
	 * @param cnstrctAddr2 the cnstrctAddr2 to set
	 */
	public void setCnstrctAddr2(String cnstrctAddr2) {
		this.cnstrctAddr2 = cnstrctAddr2;
	}

	/**
	 * @return the cnstrctPhone
	 */
	public String getCnstrctPhone() {
		return cnstrctPhone;
	}

	/**
	 * @param cnstrctPhone the cnstrctPhone to set
	 */
	public void setCnstrctPhone(String cnstrctPhone) {
		this.cnstrctPhone = cnstrctPhone;
	}

	/**
	 * @return the cnstrctPubMnger
	 */
	public String getCnstrctPubMnger() {
		return cnstrctPubMnger;
	}

	/**
	 * @param cnstrctPubMnger the cnstrctPubMnger to set
	 */
	public void setCnstrctPubMnger(String cnstrctPubMnger) {
		this.cnstrctPubMnger = cnstrctPubMnger;
	}

	/**
	 * @return the cnstrctRelMnger
	 */
	public String getCnstrctRelMnger() {
		return cnstrctRelMnger;
	}

	/**
	 * @param cnstrctRelMnger the cnstrctRelMnger to set
	 */
	public void setCnstrctRelMnger(String cnstrctRelMnger) {
		this.cnstrctRelMnger = cnstrctRelMnger;
	}

	/**
	 * @return the mngTeam
	 */
	public String getMngTeam() {
		return mngTeam;
	}

	/**
	 * @param mngTeam the mngTeam to set
	 */
	public void setMngTeam(String mngTeam) {
		this.mngTeam = mngTeam;
	}

	/**
	 * @return the salesMnger
	 */
	public String getSalesMnger() {
		return salesMnger;
	}

	/**
	 * @param salesMnger the salesMnger to set
	 */
	public void setSalesMnger(String salesMnger) {
		this.salesMnger = salesMnger;
	}

	/**
	 * @return the cnstrctMnger
	 */
	public String getCnstrctMnger() {
		return cnstrctMnger;
	}

	/**
	 * @param cnstrctMnger the cnstrctMnger to set
	 */
	public void setCnstrctMnger(String cnstrctMnger) {
		this.cnstrctMnger = cnstrctMnger;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the regDt
	 */
	@JsonSerialize(using=JsonDateSerializer.class)
	public java.util.Date getRegDt() {
		return regDt;
	}

	/**
	 * @param regDt the regDt to set
	 */
	public void setRegDt(java.util.Date regDt) {
		this.regDt = regDt;
	}

	/**
	 * @return the regUser
	 */
	public String getRegUser() {
		return regUser;
	}

	/**
	 * @param regUser the regUser to set
	 */
	public void setRegUser(String regUser) {
		this.regUser = regUser;
	}

	/**
	 * @return the uptDt
	 */
	@JsonSerialize(using=JsonDateSerializer.class)
	public java.util.Date getUptDt() {
		return uptDt;
	}

	/**
	 * @param uptDt the uptDt to set
	 */
	public void setUptDt(java.util.Date uptDt) {
		this.uptDt = uptDt;
	}

	/**
	 * @return the uptUser
	 */
	public String getUptUser() {
		return uptUser;
	}

	/**
	 * @param uptUser the uptUser to set
	 */
	public void setUptUser(String uptUser) {
		this.uptUser = uptUser;
	}

	public String getContractType1Nm() {
		return contractType1Nm;
	}

	public void setContractType1Nm(String contractType1Nm) {
		this.contractType1Nm = contractType1Nm;
	}

	public String getContractType2Nm() {
		return contractType2Nm;
	}

	public void setContractType2Nm(String contractType2Nm) {
		this.contractType2Nm = contractType2Nm;
	}

	public String getContractType3Nm() {
		return contractType3Nm;
	}

	public void setContractType3Nm(String contractType3Nm) {
		this.contractType3Nm = contractType3Nm;
	}

	public String getStateNm() {
		return stateNm;
	}

	public void setStateNm(String stateNm) {
		this.stateNm = stateNm;
	}

	public String getCnstrctWayNm() {
		return cnstrctWayNm;
	}

	public void setCnstrctWayNm(String cnstrctWayNm) {
		this.cnstrctWayNm = cnstrctWayNm;
	}

}
//end of Contract.java