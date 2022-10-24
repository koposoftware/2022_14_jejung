package kr.ac.kopo.budget;

public class AutoDivideSettingVO {

	//private String id;
	private String accountNo;
	//private String toPocket;
	private int toPocketCode;
	private int autoDivAmount;
	private String autoDivDate;
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public int getToPocketCode() {
		return toPocketCode;
	}
	public void setToPocketCode(int toPocketCode) {
		this.toPocketCode = toPocketCode;
	}
	public int getAutoDivAmount() {
		return autoDivAmount;
	}
	public void setAutoDivAmount(int autoDivAmount) {
		this.autoDivAmount = autoDivAmount;
	}
	public String getAutoDivDate() {
		return autoDivDate;
	}
	public void setAutoDivDate(String autoDivDate) {
		this.autoDivDate = autoDivDate;
	}
	@Override
	public String toString() {
		return "AutoDivideSettingVO [accountNo=" + accountNo + ", toPocketCode=" + toPocketCode + ", autoDivAmount="
				+ autoDivAmount + ", autoDivDate=" + autoDivDate + "]";
	}
	

}
