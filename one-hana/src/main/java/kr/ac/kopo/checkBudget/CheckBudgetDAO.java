package kr.ac.kopo.checkBudget;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.budget.AutoDivideVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.myBank.PocketVO;


public interface CheckBudgetDAO {

	List<AutoDivideSettingVO> getBudgetSettingAmount(String accountNo);

	List<DayVO> getMonthConsumeList(String id);

	List<DayVO> getMonthConsumeList2(String id);

	List<DayVO> getConsumeNameList(String id);
	
	List<PocketVO> getReBudgetPocketList(Map<String, Object> reBudgetMap);

	void updateReBudgetSet(Map<String, Object> reBudgetMap2);

	List<AutoDivideVO> selectChangeModal(Map<String, Object> reBudgetMap3);

	

	

}
