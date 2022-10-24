package kr.ac.kopo.myBank;

public class PocketVO {
	private String accountNo;
	private int pocketCode;
	private String pocketName;
	private String pocketDtl;
	private int balance;
	//private String autoDivDate;
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public int getPocketCode() {
		return pocketCode;
	}
	public void setPocketCode(int pocketCode) {
		this.pocketCode = pocketCode;
	}
	public String getPocketName() {
		return pocketName;
	}
	public void setPocketName(String pocketName) {
		this.pocketName = pocketName;
	}
	public String getPocketDtl() {
		return pocketDtl;
	}
	public void setPocketDtl(String pocketDtl) {
		this.pocketDtl = pocketDtl;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "PocketVO [accountNo=" + accountNo + ", pocketCode=" + pocketCode + ", pocketName=" + pocketName
				+ ", pocketDtl=" + pocketDtl + ", balance=" + balance + "]";
	}
	
	
	
	
	
	
}
