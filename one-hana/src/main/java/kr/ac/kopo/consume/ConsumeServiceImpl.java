package kr.ac.kopo.consume;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.date.CateVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.date.MixVO;
import kr.ac.kopo.myBank.MyBankVO;



@Service
public class ConsumeServiceImpl implements ConsumeService {

	@Autowired
	private ConsumeDAO consumeDAO;
	
	@Override
	public List<Map<String, Object>> getConsumeData(String id) {
		
		List<Map<String, Object>> consumeList = consumeDAO.getConsumeData(id);
		
		return consumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> getMonthConsumeList = consumeDAO.getMonthConsume(monthMap);
		
		return getMonthConsumeList;
	}
	
	@Override
	public List<Map<String, Object>> getSixMonthConsume(Map<String, Object> monthMap) {
		List<Map<String,Object>> getSixMonthConsumeList = consumeDAO.getSixMonthConsume(monthMap);
		
		return getSixMonthConsumeList;
	}
	
	
	@Override
	public List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap) {
		List<Map<String, Object>>  getDayConsumeList = consumeDAO.getDayConsume(dayMap);
		
		return getDayConsumeList;
	}
	
	@Override
	public List<DayVO> getDayConsume2(Map<String, Object> dayMap2) {
		List<DayVO> getDayList = consumeDAO.getDayConsume2(dayMap2);
		
		return getDayList;
	}
	
	
	@Override
	public List<DayVO> getdayTop(Map<String, Object> dayMap3) {
		List<DayVO> getDateTopList = consumeDAO.getDateTop(dayMap3);
		
		return getDateTopList;
		
	}
	
	
	@Override
	public List<CateVO> getCateAmount(Map<String, Object> cateMap) {
		List<CateVO> cateAmount = consumeDAO.getCateAmount(cateMap);
		
		return cateAmount;
	}

	@Override
	public List<DayVO> getTimesData(Map<String, Object> timesMap) {
		List<DayVO> timesAmount = consumeDAO.getTimesData(timesMap);
		return timesAmount;		
	}

	@Override
	public List<CateVO> getCate3Data(Map<String, Object> cate3Map) {
		List<CateVO> cate3Amount = consumeDAO.getCate3Data(cate3Map);
		return cate3Amount;		
	}
	
	@Override
	public List<MixVO> getCate3Count(Map<String, Object> cate3countMap) {
		List<MixVO> cate3Count = consumeDAO.getCate3Count(cate3countMap);
		return cate3Count;
	}
	
	@Override
	public List<DayVO> getDateTopList(Map<String, Object> dateTopMap) {
		List<DayVO> dateTopList = consumeDAO.getDateTopList(dateTopMap);
		return dateTopList;		
	}

	@Override
	public List<DayVO> getSixAmountData(Map<String, Object> sixMap) {
		List<DayVO> sixAmountList = consumeDAO.getSixAmountData(sixMap);
		return sixAmountList;
	}

	@Override
	public List<CateVO> getTopCountData(Map<String, Object> topCountMap) {
		List<CateVO> topCountList = consumeDAO.getTopCountData(topCountMap);
		return topCountList;
	}
	
	
	
	@Override
	public List<DayVO> getCountMedianData(Map<String, Object> countMedMap) {
		List<DayVO> countMedList = consumeDAO.getCountMedianData(countMedMap);
		return countMedList;
	}
	
	
	@Override
	public List<Map<String,Object>> getTop2Data(Map<String, Object> memberMap) {
		List<Map<String,Object>> top2List = consumeDAO.getTop2Data(memberMap);
		return top2List;
	}
	
	@Override
	public List<DayVO> getSumMedianData(Map<String, Object> sumMedMap) {
		List<DayVO> sumMedList = consumeDAO.getSumMedianData(sumMedMap);
		return sumMedList;
	}

	@Override
	public void insertNoticeSet(Map<String, Object> noticeMap) {
		consumeDAO.insertNoticeSet(noticeMap);
	}
	
	
	@Override
	public List<MyBankVO> showAutoSmsTimeOne() {
		List<MyBankVO> timeList = consumeDAO.showAutoSmsTimeOne();
		return timeList;
	}
	
	@Override
	public List<Map<String, Object>> doAutoSms(MyBankVO myBankVO) {
		List<Map<String, Object>> timeList2 = consumeDAO.doAutoSms(myBankVO);
		return timeList2;
	}
}
