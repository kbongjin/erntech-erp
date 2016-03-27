
package kr.co.enrtech.erp.condetail;

/**
 * <pre>
 * 
 * </pre>
 * @author Bongjin Kwon
 * @version 1.0
 */
public class ContractDetail {

	private int contractId;//
	private int detailId;//
	private String productCd;//품명코
	private String standardCd;//규격코드
	private String unit;//단위
	private int qty;//수량
	private int unitPrice;//단가
	private int price;//계약금액
	private String factory;//생산공장
	private int excJaQty;//실행수량(자재)
	private int excJaUprice;//실행단가(자재)
	private int excJaPrice;//실행금액(자재)
	private String excSlQty;//실행수량(설치)
	private String excSlUprice;//실행단가(설치)
	private String excSlPrice;//실행금액(설치)
	private java.util.Date deliveryDt;//납품일자

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public ContractDetail() {
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
	 * @return the detailId
	 */
	public int getDetailId() {
		return detailId;
	}

	/**
	 * @param detailId the detailId to set
	 */
	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}

	/**
	 * @return the productCd
	 */
	public String getProductCd() {
		return productCd;
	}

	/**
	 * @param productCd the productCd to set
	 */
	public void setProductCd(String productCd) {
		this.productCd = productCd;
	}

	/**
	 * @return the standardCd
	 */
	public String getStandardCd() {
		return standardCd;
	}

	/**
	 * @param standardCd the standardCd to set
	 */
	public void setStandardCd(String standardCd) {
		this.standardCd = standardCd;
	}

	/**
	 * @return the unit
	 */
	public String getUnit() {
		return unit;
	}

	/**
	 * @param unit the unit to set
	 */
	public void setUnit(String unit) {
		this.unit = unit;
	}

	/**
	 * @return the qty
	 */
	public int getQty() {
		return qty;
	}

	/**
	 * @param qty the qty to set
	 */
	public void setQty(int qty) {
		this.qty = qty;
	}

	/**
	 * @return the unitPrice
	 */
	public int getUnitPrice() {
		return unitPrice;
	}

	/**
	 * @param unitPrice the unitPrice to set
	 */
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	/**
	 * @return the price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * @return the factory
	 */
	public String getFactory() {
		return factory;
	}

	/**
	 * @param factory the factory to set
	 */
	public void setFactory(String factory) {
		this.factory = factory;
	}

	/**
	 * @return the excJaQty
	 */
	public int getExcJaQty() {
		return excJaQty;
	}

	/**
	 * @param excJaQty the excJaQty to set
	 */
	public void setExcJaQty(int excJaQty) {
		this.excJaQty = excJaQty;
	}

	/**
	 * @return the excJaUprice
	 */
	public int getExcJaUprice() {
		return excJaUprice;
	}

	/**
	 * @param excJaUprice the excJaUprice to set
	 */
	public void setExcJaUprice(int excJaUprice) {
		this.excJaUprice = excJaUprice;
	}

	/**
	 * @return the excJaPrice
	 */
	public int getExcJaPrice() {
		return excJaPrice;
	}

	/**
	 * @param excJaPrice the excJaPrice to set
	 */
	public void setExcJaPrice(int excJaPrice) {
		this.excJaPrice = excJaPrice;
	}

	/**
	 * @return the excSlQty
	 */
	public String getExcSlQty() {
		return excSlQty;
	}

	/**
	 * @param excSlQty the excSlQty to set
	 */
	public void setExcSlQty(String excSlQty) {
		this.excSlQty = excSlQty;
	}

	/**
	 * @return the excSlUprice
	 */
	public String getExcSlUprice() {
		return excSlUprice;
	}

	/**
	 * @param excSlUprice the excSlUprice to set
	 */
	public void setExcSlUprice(String excSlUprice) {
		this.excSlUprice = excSlUprice;
	}

	/**
	 * @return the excSlPrice
	 */
	public String getExcSlPrice() {
		return excSlPrice;
	}

	/**
	 * @param excSlPrice the excSlPrice to set
	 */
	public void setExcSlPrice(String excSlPrice) {
		this.excSlPrice = excSlPrice;
	}

	/**
	 * @return the deliveryDt
	 */
	public java.util.Date getDeliveryDt() {
		return deliveryDt;
	}

	/**
	 * @param deliveryDt the deliveryDt to set
	 */
	public void setDeliveryDt(java.util.Date deliveryDt) {
		this.deliveryDt = deliveryDt;
	}

}
//end of ContractDetail.java