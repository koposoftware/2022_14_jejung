package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.date.CateVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.date.MixVO;
import kr.ac.kopo.myBank.MyBankVO;

public interface ConsumeService {

	List<Map<String, Object>> getConsumeData(String id);

	List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap);

	List<Map<String, Object>> getSixMonthConsume(Map<String, Object> monthMap);

	List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap);

	List<DayVO> getDayConsume2(Map<String, Object> dayMap2);

	List<DayVO> getdayTop(Map<String, Object> dayMap3);

	List<CateVO> getCateAmount(Map<String, Object> cateMap);

	List<DayVO> getTimesData(Map<String, Object> timesMap);

	List<CateVO> getCate3Data(Map<String, Object> cate3Map);

	List<MixVO> getCate3Count(Map<String, Object> cate3countMap);

	List<DayVO> getDateTopList(Map<String, Object> dateTopMap);

	List<DayVO> getSixAmountData(Map<String, Object> sixMap);

	List<CateVO> getTopCountData(Map<String, Object> topCountMap);
	
	List<DayVO> getCountMedianData(Map<String, Object> countMedMap);

	List<Map<String,Object>> getTop2Data(Map<String, Object> memberMap);

	List<DayVO> getSumMedianData(Map<String, Object> sumMedMap);

	void insertNoticeSet(Map<String, Object> noticeMap);

	List<MyBankVO> showAutoSmsTimeOne();

	List<Map<String, Object>> doAutoSms(MyBankVO myBankVO);



	
	


}
