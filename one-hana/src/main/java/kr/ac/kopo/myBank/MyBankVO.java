package kr.ac.kopo.myBank;

public class MyBankVO {

	private String id; 
	private String accountNo;
	private String accountName;
	/* private int basicBal; */
	private int balance;
	private String openDate;
	private int income;
	private String incomeDate;
	private String parkingDate;
	private int parkingLimit;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getIncomeDate() {
		return incomeDate;
	}
	public void setIncomeDate(String incomeDate) {
		this.incomeDate = incomeDate;
	}
	public String getParkingDate() {
		return parkingDate;
	}
	public void setParkingDate(String parkingDate) {
		this.parkingDate = parkingDate;
	}
	public int getParkingLimit() {
		return parkingLimit;
	}
	public void setParkingLimit(int parkingLimit) {
		this.parkingLimit = parkingLimit;
	}
	@Override
	public String toString() {
		return "MyBankVO [id=" + id + ", accountNo=" + accountNo + ", accountName=" + accountName + ", balance="
				+ balance + ", openDate=" + openDate + ", income=" + income + ", incomeDate=" + incomeDate
				+ ", parkingDate=" + parkingDate + ", parkingLimit=" + parkingLimit + "]";
	}
	
	
	
	
	
}
