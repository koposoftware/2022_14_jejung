package kr.ac.kopo.parking;

public class ParkingSettingVO {
	
	private String id;
	private String parkingDate;
	private String accountNo;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParkingDate() {
		return parkingDate;
	}
	public void setParkingDate(String parkingDate) {
		this.parkingDate = parkingDate;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	@Override
	public String toString() {
		return "ParkingSettingVO [id=" + id + ", parkingDate=" + parkingDate + ", accountNo=" + accountNo + "]";
	}
	
	

}
