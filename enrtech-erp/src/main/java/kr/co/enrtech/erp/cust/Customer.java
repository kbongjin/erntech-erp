/**
 * 
 */
package kr.co.enrtech.erp.cust;

import org.springframework.util.StringUtils;

/**
 * @author idkbj
 *
 */
public class Customer {

	private int id;//
	private String csCode;//발주처코드
	private String csTypeCd;//CS타입
	private String csNm;//발주처명
	private String post;//우편번호
	private String addr1;//주소1
	private String addr2;//주소2
	private String telNo;//대표 전화번호
	private String faxNo;//팩스번호
	private java.util.Date uptDt;//최근수정일자
	private String uptUser;//최근수정자

	/**
	 * 
	 */
	public Customer() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the csCode
	 */
	public String getCsCode() {
		
		if(StringUtils.isEmpty(csCode)) {
			return "CS" + csTypeCd;
		}
		
		return csCode;
	}

	/**
	 * @param csCode the csCode to set
	 */
	public void setCsCode(String csCode) {
		this.csCode = csCode;
	}

	/**
	 * @return the csTypeCd
	 */
	public String getCsTypeCd() {
		return csTypeCd;
	}

	/**
	 * @param csTypeCd the csTypeCd to set
	 */
	public void setCsTypeCd(String csTypeCd) {
		this.csTypeCd = csTypeCd;
	}

	/**
	 * @return the csNm
	 */
	public String getCsNm() {
		return csNm;
	}

	/**
	 * @param csNm the csNm to set
	 */
	public void setCsNm(String csNm) {
		this.csNm = csNm;
	}

	/**
	 * @return the post
	 */
	public String getPost() {
		return post;
	}

	/**
	 * @param post the post to set
	 */
	public void setPost(String post) {
		this.post = post;
	}

	/**
	 * @return the addr1
	 */
	public String getAddr1() {
		return addr1;
	}

	/**
	 * @param addr1 the addr1 to set
	 */
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	/**
	 * @return the addr2
	 */
	public String getAddr2() {
		return addr2;
	}

	/**
	 * @param addr2 the addr2 to set
	 */
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	/**
	 * @return the telNo
	 */
	public String getTelNo() {
		return telNo;
	}

	/**
	 * @param telNo the telNo to set
	 */
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

	/**
	 * @return the faxNo
	 */
	public String getFaxNo() {
		return faxNo;
	}

	/**
	 * @param faxNo the faxNo to set
	 */
	public void setFaxNo(String faxNo) {
		this.faxNo = faxNo;
	}

	/**
	 * @return the uptDt
	 */
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

}
