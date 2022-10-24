package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.divide.DivideVO;
import kr.ac.kopo.myBank.MyBankVO;

@Repository
public class BudgetDAOImpl implements BudgetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {	
		sqlSessionTemplate.update("budget.BudgetDAO.updateIncome", incomeMap);
	}

	@Override
	public void insertFixed(Map<String, Object> fixedMap) {
		sqlSessionTemplate.insert("budget.BudgetDAO.insertFixed", fixedMap);
	}
	
	@Override
	public MyBankVO getIncomeData(String accountNo) {
		return sqlSessionTemplate.selectOne("budget.BudgetDAO.getIncomeData", accountNo);
	}
	
	@Override
	public List<FixedVO> getFixedData(Map<String, Object> insertMap) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.getFixedData", insertMap);
	}
	
	@Override
	public List<HashMap<String, Object>> getFixedSum(String accountNo) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.getFixedSum", accountNo);
	}

	
	@Override
	public List<HashMap<String, Object>> getCalculation(String accountNo) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.getCalculation", accountNo);
	}
	
	
	@Override
	public List<AutoDivideVO> insertAutoDiv(Map<String, Object> divideMap) {
		
		System.out.println(divideMap);
		List<AutoDivideVO> autoDivList = sqlSessionTemplate.selectList("budget.BudgetDAO.insertAutoDiv", divideMap);
		
		return autoDivList;
	}

	@Override
	public List<AutoDivideVO> selectDivList(Map<String, Object> divideMap) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.selectDivList", divideMap);
	}

	@Override
	public void updateParkingGoal(Map<String, Object> parkingMap) {
		sqlSessionTemplate.update("budget.BudgetDAO.updateParkingGoal", parkingMap);
	}
	
	
	@Override
	public MyBankVO getParkingData(String accountNo) {
		return sqlSessionTemplate.selectOne("budget.BudgetDAO.getParkingData", accountNo);
	}
	
	
	@Override
	public List<MyBankVO> selectOneList() {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.selectOneList");
	}
	
	
	@Override
	public List<Map<String, Object>> doAutoParking(MyBankVO myBankVO) {
		
		sqlSessionTemplate.selectOne("budget.BudgetDAO.doAutoParking", myBankVO);
		return null;
	}
	
	@Override
	public void insertAutoDivSetting(Map<String, Object> divideMap) {
		sqlSessionTemplate.insert("budget.BudgetDAO.insertAutoDivSetting", divideMap);
		
	}
	
	@Override
	public void updateReBudgetSet(AutoDivideSettingVO reBudgetSet) {
		sqlSessionTemplate.update("budget.BudgetDAO.updateReBudgetSet", reBudgetSet);
	}
}
