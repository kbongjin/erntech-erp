
package kr.co.enrtech.erp.common.code;

/**
 * <pre>
 * 
 * </pre>
 * @author Bongjin Kwon
 * @version 1.0
 */
public class CommonCode {

	private String gropId;//그룹코드
	private String code;//코드
	private String codeNm;//코드명
	private short prtoSeq;//출력순서
	private String desc;//코드설명
	private String mngYn;//관리여부
	
	private int offset;
	private int limit = 10000;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public CommonCode() {
		// TODO Auto-generated constructor stub
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	/**
	 * @return the gropId
	 */
	public String getGropId() {
		return gropId;
	}

	/**
	 * @param gropId the gropId to set
	 */
	public void setGropId(String gropId) {
		this.gropId = gropId;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the codeNm
	 */
	public String getCodeNm() {
		return codeNm;
	}

	/**
	 * @param codeNm the codeNm to set
	 */
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}

	/**
	 * @return the prtoSeq
	 */
	public short getPrtoSeq() {
		return prtoSeq;
	}

	/**
	 * @param prtoSeq the prtoSeq to set
	 */
	public void setPrtoSeq(short prtoSeq) {
		this.prtoSeq = prtoSeq;
	}

	/**
	 * @return the desc
	 */
	public String getDesc() {
		return desc;
	}

	/**
	 * @param desc the desc to set
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getMngYn() {
		return mngYn;
	}

	public void setMngYn(String mngYn) {
		this.mngYn = mngYn;
	}

}
//end of CommonCode.java