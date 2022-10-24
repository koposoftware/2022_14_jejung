package kr.ac.kopo.budget;

public class FixedVO {

	private String accountNo;
	private String fixedName;
	private int    fixedCost;
	//private String fixedDate;  //고정비 자동이체가 아니라 고정비 확인용으로 바꿈. 그래서 자동이체날짜 필요 없음!! 다시 자동이체로 바꿀거면 살리셈
	private int    pocketCode;
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getFixedName() {
		return fixedName;
	}
	public void setFixedName(String fixedName) {
		this.fixedName = fixedName;
	}
	public int getFixedCost() {
		return fixedCost;
	}
	public void setFixedCost(int fixedCost) {
		this.fixedCost = fixedCost;
	}
	public int getPocketCode() {
		return pocketCode;
	}
	public void setPocketCode(int pocketCode) {
		this.pocketCode = pocketCode;
	}
	@Override
	public String toString() {
		return "FixedVO [accountNo=" + accountNo + ", fixedName=" + fixedName + ", fixedCost=" + fixedCost
				+ ", pocketCode=" + pocketCode + "]";
	}
	
	
	
	}
