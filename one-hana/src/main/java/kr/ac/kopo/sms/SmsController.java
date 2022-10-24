package kr.ac.kopo.sms;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import kr.ac.kopo.consume.ConsumeService;
import kr.ac.kopo.myBank.MyBankService;
import kr.ac.kopo.myBank.MyBankVO;

@Controller
public class SmsController {

	@Autowired
	private ConsumeService consumeService;
	
	@Autowired
	private MyBankService mybankService;
	
	//소비가 많은 시간대에 따른 문자 스케줄러
		@Scheduled(cron = "0 0 12 * * ?") //매일 12시에 실행
		public void autoSms() {
		      List<MyBankVO> autoSmsTimeList = consumeService.showAutoSmsTimeOne();
		      
		      //System.out.println("autoParkingDayList : " + autoParkingDayList);
		      
		      for (MyBankVO MyBankVO : autoSmsTimeList) {
		    	  List<Map<String, Object>> selectAutoDiv = consumeService.doAutoSms(MyBankVO); //프로시저 호출
		    	   // System.out.println("selectAutoDiv : " + selectAutoDiv);
		      }
		   }	
	


}
