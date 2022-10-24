package kr.ac.kopo.checkBudget;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.budget.AutoDivideVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.myBank.PocketVO;

@Repository
public class CheckBudgetDAOImpl implements CheckBudgetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<AutoDivideSettingVO> getBudgetSettingAmount(String accountNo) {
		List<AutoDivideSettingVO> budgetSettingList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getBudgetSettingAmount", accountNo);
		return budgetSettingList;
	}
	
	@Override
	public List<DayVO> getMonthConsumeList(String id) {
		List<DayVO> monthConsumeList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getMonthConsumeList", id);
		return monthConsumeList;
	}
	
	@Override
	public List<DayVO> getMonthConsumeList2(String id) {
		List<DayVO> monthConsumeList2 = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getMonthConsumeList2", id);
		return monthConsumeList2;
		
	}
	
	@Override
	public List<DayVO> getConsumeNameList(String id) {
		List<DayVO> consumeNameList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getConsumeNameList", id);
		return consumeNameList;
	}
	
	@Override
	public List<PocketVO> getReBudgetPocketList(Map<String, Object> reBudgetMap){
		List<PocketVO> reBudgetList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getReBudgetPocketList", reBudgetMap);
		return reBudgetList;
	}
	
	@Override
	public void updateReBudgetSet(Map<String, Object> reBudgetMap2) {
		sqlSessionTemplate.update("checkBudget.CheckBudgetDAO.updateReBudgetSet", reBudgetMap2);
	}
	
	@Override
	public List<AutoDivideVO> selectChangeModal(Map<String, Object> reBudgetMap3) {
		List<AutoDivideVO> changeModalList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.selectChangeModal", reBudgetMap3);
		return changeModalList;
	}
}
