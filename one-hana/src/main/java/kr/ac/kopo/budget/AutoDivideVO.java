package kr.ac.kopo.budget;

//자동이체설정(1회성) VO
public class AutoDivideVO {
	
	private String accountNo;
	private String fromPocket;
	private String toPocket;
	private String autoDivDate;
	private int    autoDivAmount;
	
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getFromPocket() {
		return fromPocket;
	}
	public void setFromPocket(String fromPocket) {
		this.fromPocket = fromPocket;
	}
	public String getToPocket() {
		return toPocket;
	}
	public void setToPocket(String toPocket) {
		this.toPocket = toPocket;
	}
	public String getAutoDivDate() {
		return autoDivDate;
	}
	public void setAutoDivDate(String autoDivDate) {
		this.autoDivDate = autoDivDate;
	}
	public int getAutoDivAmount() {
		return autoDivAmount;
	}
	public void setAutoDivAmount(int autoDivAmount) {
		this.autoDivAmount = autoDivAmount;
	}
	@Override
	public String toString() {
		return "AutoDivideVO [accountNo=" + accountNo + ", fromPocket=" + fromPocket + ", toPocket=" + toPocket
				+ ", autoDivDate=" + autoDivDate + ", autoDivAmount=" + autoDivAmount + "]";
	}
	
	
	

}
