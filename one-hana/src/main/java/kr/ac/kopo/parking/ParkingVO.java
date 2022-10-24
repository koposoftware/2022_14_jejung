package kr.ac.kopo.parking;

public class ParkingVO {

	//private String accountNo;
	   //private String id;
	//private String toPocket;
	//private int    parkingAmount;
	//private String parkingDate;
	
	
	
	private String accountNo;
	private String fromPocket;
	private int    parkingAmount;
	private String parkingCode;
	
	
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
	public int getParkingAmount() {
		return parkingAmount;
	}
	public void setParkingAmount(int parkingAmount) {
		this.parkingAmount = parkingAmount;
	}
	public String getParkingCode() {
		return parkingCode;
	}
	public void setParkingCode(String parkingCode) {
		this.parkingCode = parkingCode;
	}
	@Override
	public String toString() {
		return "ParkingVO [accountNo=" + accountNo + ", fromPocket=" + fromPocket + ", parkingAmount=" + parkingAmount
				+ ", parkingCode=" + parkingCode + "]";
	}
	
	
	
	
	
}
