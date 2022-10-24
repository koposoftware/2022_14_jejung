package kr.ac.kopo.checkBudget;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.budget.AutoDivideVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.myBank.PocketVO;

@Service
public class CheckBudgetServiceImpl implements CheckBudgetService{

	@Autowired
	private CheckBudgetDAO checkBudgetDAO;
	
	@Override
	public List<AutoDivideSettingVO> getBudgetSettingAmount(String accountNo) {
		List<AutoDivideSettingVO> budgetSettingList = checkBudgetDAO.getBudgetSettingAmount(accountNo);
		return budgetSettingList;
		
	}
	
	
	@Override
	public List<DayVO> getMonthConsumeList(String id) {
		List<DayVO> monthConsumeList = checkBudgetDAO.getMonthConsumeList(id);
		return monthConsumeList;
	}
	
	@Override
	public List<DayVO> getMonthConsumeList2(String id) {
		List<DayVO> monthConsumeList = checkBudgetDAO.getMonthConsumeList2(id);
		return monthConsumeList;
	}
	
	@Override
	public List<DayVO> getConsumeNameList(String id) {
		List<DayVO> consumeNameList = checkBudgetDAO.getConsumeNameList(id);
		return consumeNameList;
	}
	
	@Override
	public List<PocketVO> getReBudgetPocketList(Map<String, Object> reBudgetMap) {
		List<PocketVO> reBudgetList = checkBudgetDAO.getReBudgetPocketList(reBudgetMap);
		return reBudgetList;
	}
	
	@Override
	public void updateReBudgetSet(Map<String, Object> reBudgetMap2) {
		checkBudgetDAO.	updateReBudgetSet(reBudgetMap2);
	}
	
	@Override
	public List<AutoDivideVO> selectChangeModal(Map<String, Object> reBudgetMap3){
		List<AutoDivideVO> changeModalList = checkBudgetDAO.selectChangeModal(reBudgetMap3);
		return changeModalList;
	}
	
}
