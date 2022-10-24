package kr.ac.kopo.date;

public class MixVO {

	private String cate1;
	private String cate2;
	private String cate3;
	private String day;
	private int count;
	private int sum;
	
	
	public String getCate1() {
		return cate1;
	}
	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}
	public String getCate2() {
		return cate2;
	}
	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}
	public String getCate3() {
		return cate3;
	}
	public void setCate3(String cate3) {
		this.cate3 = cate3;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "MixVO [cate1=" + cate1 + ", cate2=" + cate2 + ", cate3=" + cate3 + ", day=" + day + ", count=" + count
				+ ", sum=" + sum + "]";
	}
	
	
	
}
