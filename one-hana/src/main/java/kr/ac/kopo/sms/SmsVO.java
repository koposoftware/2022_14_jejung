package kr.ac.kopo.sms;

public class SmsVO {
	
	private String accountNo;
	private String smsDate;
	private String smsCode;
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getSmsDate() {
		return smsDate;
	}
	public void setSmsDate(String smsDate) {
		this.smsDate = smsDate;
	}
	public String getSmsCode() {
		return smsCode;
	}
	public void setSmsCode(String smsCode) {
		this.smsCode = smsCode;
	}
	
	@Override
	public String toString() {
		return "SmsVO [accountNo=" + accountNo + ", smsDate=" + smsDate + ", smsCode=" + smsCode + "]";
	}
	
	
}
