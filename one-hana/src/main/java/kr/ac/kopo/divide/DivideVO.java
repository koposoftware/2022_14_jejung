package kr.ac.kopo.divide;

public class DivideVO {
	
	
	private String 	divCode;
	private String 	fromPocket;
	private String 	toPocket;
	private int    	divAmount;
	private String 	divDate;
	//private String 	autoDivDate;
	public String getDivCode() {
		return divCode;
	}
	public void setDivCode(String divCode) {
		this.divCode = divCode;
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
	public int getDivAmount() {
		return divAmount;
	}
	public void setDivAmount(int divAmount) {
		this.divAmount = divAmount;
	}
	public String getDivDate() {
		return divDate;
	}
	public void setDivDate(String divDate) {
		this.divDate = divDate;
	}
	@Override
	public String toString() {
		return "DivideVO [divCode=" + divCode + ", fromPocket=" + fromPocket + ", toPocket=" + toPocket + ", divAmount="
				+ divAmount + ", divDate=" + divDate + "]";
	}
	
	
	
	
}
