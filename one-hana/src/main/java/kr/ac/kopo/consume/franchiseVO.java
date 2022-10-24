package kr.ac.kopo.consume;

public class franchiseVO {

	private String franCode;
	private String franName;
	private String cateCode;
	
	public String getFranCode() {
		return franCode;
	}
	public void setFranCode(String franCode) {
		this.franCode = franCode;
	}
	public String getFranName() {
		return franName;
	}
	public void setFranName(String franName) {
		this.franName = franName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	
	@Override
	public String toString() {
		return "franchiseVO [franCode=" + franCode + ", franName=" + franName + ", cateCode=" + cateCode + "]";
	}
	
	
}
