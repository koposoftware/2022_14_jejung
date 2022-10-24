package kr.ac.kopo.sms;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class SmsService {

	
	String apiKey = "";
	String apiSecret = "";
	String fromNumber = "";
	public void sendMessage(String toNumber, String message) {

		Message coolsms = new Message(apiKey, apiSecret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", toNumber);
		params.put("from", fromNumber);
		params.put("type", "SMS");
		params.put("text", message);
		params.put("MyOnehana", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

	/*
	 * public int sendAuthNumberMessage(String tel) { int randomNumber =
	 * generateAuthNo(); sendMessage(tel, " 마이원하나 " + randomNumber +
	 * " 를 입력하세요."); return randomNumber; }
	 * 
	 * private static int generateAuthNo() { java.util.Random generator = new
	 * java.util.Random(); generator.setSeed(System.currentTimeMillis()); return
	 * generator.nextInt(1000000) % 1000000; }
	 */
}
