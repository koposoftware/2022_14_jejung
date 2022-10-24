package kr.ac.kopo.consume;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.date.CateVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.date.MixVO;
import kr.ac.kopo.myBank.MyBankVO;



@Repository
public class ConsumeDAOImpl implements ConsumeDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> getConsumeData(String id) {
		
		List<Map<String, Object>> consumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getConsumeData", id);
		
		return consumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> monthConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getMonthConsumeData", monthMap);
		
		return monthConsumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getSixMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> sixMonthConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getSixMonthConsumeData", monthMap);
		
		return sixMonthConsumeList;
	}
	
	
	@Override
	public List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap) {
		List<Map<String, Object>> dayConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getDayConsume", dayMap);
		
		return dayConsumeList;
	}
	
	@Override
	public List<DayVO> getDayConsume2(Map<String, Object> dayMap2) {
		List<DayVO> dayList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getDayConsume2", dayMap2);
		return dayList;
	}
	
	@Override
	public List<DayVO> getDateTop(Map<String, Object> dayMap3) {
		List<DayVO> dateTopList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getDateTop", dayMap3);
		return dateTopList;
	}
	
	@Override
	public List<CateVO> getCateAmount(Map<String, Object> cateMap) {
		List<CateVO> cateAmountList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getCateAmount", cateMap);
		return cateAmountList;
	}
	
	@Override
	public List<DayVO> getTimesData(Map<String, Object> timesMap) {
		List<DayVO> timesList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getTimesData", timesMap);
		return timesList;
	}
	
	
	@Override
	public List<CateVO> getCate3Data(Map<String, Object> cate3Map) {
		List<CateVO> cate3List = sqlSessionTemplate.selectList("consume.ConsumeDAO.getCate3Data", cate3Map);
		return cate3List;
	}
	
	@Override
	public List<MixVO> getCate3Count(Map<String, Object> cate3countMap) {
		List<MixVO> cate3CountList =  sqlSessionTemplate.selectList("consume.ConsumeDAO.getCate3Count", cate3countMap);
		return cate3CountList;
	}
	
	
	@Override
	public List<DayVO> getDateTopList(Map<String, Object> dateTopMap) {
		List<DayVO> dateTopHistoryList =  sqlSessionTemplate.selectList("consume.ConsumeDAO.getDateTopList", dateTopMap);
		return dateTopHistoryList;
	}
	
	
	@Override
	public List<DayVO> getSixAmountData(Map<String, Object> sixMap) {
		List<DayVO> sixAmountList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getSixAmountData", sixMap);
		return sixAmountList;
	}
	
	@Override
	public List<CateVO> getTopCountData(Map<String, Object> topCountMap) {
		List<CateVO> topCountList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getTopCountData", topCountMap);
		return topCountList;
	}
	
	@Override
	public List<DayVO> getCountMedianData(Map<String, Object> countMedMap) {
		List<DayVO> countMedList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getCountMedianData", countMedMap);
		return countMedList;
	}
	
	
	@Override
	public List<Map<String, Object>> getTop2Data(Map<String, Object> memberMap) {
		List<Map<String, Object>> top2DataList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getTop2Data", memberMap);
		return top2DataList;		
	}
	
	@Override
	public List<DayVO> getSumMedianData(Map<String, Object> sumMedMap){
		List<DayVO> sumMedList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getSumMedianData", sumMedMap);
		return sumMedList;
	}

	@Override
	public void insertNoticeSet(Map<String, Object> noticeMap) {
		sqlSessionTemplate.insert("consume.ConsumeDAO.insertNoticeSet", noticeMap);
	}
	
	@Override
	public List<MyBankVO> showAutoSmsTimeOne() {
		List<MyBankVO> timeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.showAutoSmsTimeOne");
		return timeList;
	}
	
	@Override
	public List<Map<String, Object>> doAutoSms(MyBankVO myBankVO) {
		List<Map<String, Object>> timeList2 = sqlSessionTemplate.selectList("consume.ConsumeDAO.doAutoSms");
		return timeList2;
	}
}
