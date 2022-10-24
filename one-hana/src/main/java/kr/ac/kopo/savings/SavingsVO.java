package kr.ac.kopo.savings;

public class SavingsVO {

	private String savingsName;
	private String type;                 //적금/예금
	private String target;				 //가입대상
	private String maxLimit;			 //적립한도
	private String minPeriod;			 //최소 계약기간
	private String maxPeriod;			 //최대 계약기간
	private int minAmount;			     //최소 가입금액
	private int maxAmount; 				 //최대 가입금액
	private String accumulateMethod;     //적립방법
	private String productDesc;          //상품설명
	private String registDate;           //상품등록일
	private String savingsType;			 //단리복리
	private String productCode;          //상품코드
	private String status;
	public String getSavingsName() {
		return savingsName;
	}
	public void setSavingsName(String savingsName) {
		this.savingsName = savingsName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getMaxLimit() {
		return maxLimit;
	}
	public void setMaxLimit(String maxLimit) {
		this.maxLimit = maxLimit;
	}
	public String getMinPeriod() {
		return minPeriod;
	}
	public void setMinPeriod(String minPeriod) {
		this.minPeriod = minPeriod;
	}
	public String getMaxPeriod() {
		return maxPeriod;
	}
	public void setMaxPeriod(String maxPeriod) {
		this.maxPeriod = maxPeriod;
	}
	public int getMinAmount() {
		return minAmount;
	}
	public void setMinAmount(int minAmount) {
		this.minAmount = minAmount;
	}
	public int getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(int maxAmount) {
		this.maxAmount = maxAmount;
	}
	public String getAccumulateMethod() {
		return accumulateMethod;
	}
	public void setAccumulateMethod(String accumulateMethod) {
		this.accumulateMethod = accumulateMethod;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	public String getSavingsType() {
		return savingsType;
	}
	public void setSavingsType(String savingsType) {
		this.savingsType = savingsType;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "SavingsVO [savingsName=" + savingsName + ", type=" + type + ", target=" + target + ", maxLimit="
				+ maxLimit + ", minPeriod=" + minPeriod + ", maxPeriod=" + maxPeriod + ", minAmount=" + minAmount
				+ ", maxAmount=" + maxAmount + ", accumulateMethod=" + accumulateMethod + ", productDesc=" + productDesc
				+ ", registDate=" + registDate + ", savingsType=" + savingsType + ", productCode=" + productCode
				+ ", status=" + status + "]";
	}
	
	
	
}
