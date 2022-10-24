package kr.ac.kopo.sms;

public class SmsMain {
	
	public static void main(String[] args) {
		SmsService smsService = new SmsService();
		
		smsService.sendMessage("", "고객님의 소비가 가장 많이 일어나는 xx시 입니다. 편의점 소비를 주의하세요!");
		
		//String value;
		//smsService.sendMessage("", value + "님 안녕하세요"); 
	}

}
