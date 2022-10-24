package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.divide.DivideVO;
import kr.ac.kopo.myBank.MyBankVO;

@Service
public class BudgetServiceImpl implements BudgetService {

	@Autowired
	private BudgetDAO budgetDAO;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {
		//System.out.println("여기는 서비스" + incomeMap);
		budgetDAO.updateIncome(incomeMap);	
	}


	@Override
	public void insertFixed(Map<String, Object> fixedMap) {
		
		budgetDAO.insertFixed(fixedMap);
	}
	
	@Override
	public MyBankVO getIncomeData(String accountNo) {
		MyBankVO selectIncome = budgetDAO.getIncomeData(accountNo);
		return selectIncome;
		
	}
	

	@Override
	public List<FixedVO> getFixedData(Map<String, Object> insertMap) {
		return budgetDAO.getFixedData(insertMap);
		//FixedVO selectFixed = budgetDAO.getFixedData(insertMap);
		//return selectFixed;
	}
	
	
	@Override
	public List<HashMap<String, Object>> getFixedSum(String accountNo) {
		return budgetDAO.getFixedSum(accountNo);
	}


	@Override
	public List<HashMap<String, Object>> getCalculation(String accountNo) {
		return budgetDAO.getCalculation(accountNo);
	}


	//자동 금액 이동 프로시저 호출
	@Override
	public List<AutoDivideVO> insertAutoDiv(Map<String, Object> divideMap) {
		
		return budgetDAO.insertAutoDiv(divideMap);
	}

	
	@Override
	public List<AutoDivideVO> selectDivList(Map<String, Object> divideMap) {
		
		List<AutoDivideVO> autoDivList = budgetDAO.selectDivList(divideMap);
		return autoDivList;
	}
	
	@Override
	public void updateParkingGoal(Map<String, Object> parkingMap) {	
		budgetDAO.updateParkingGoal(parkingMap);	
	}
	
	@Override
	public MyBankVO getParkingData(String accountNo) {
		MyBankVO selectParking = budgetDAO.getParkingData(accountNo);
		return selectParking;
	}
	
	
	@Override
	public List<MyBankVO> showAutoParkingDayOne() {	
		List<MyBankVO> autoParkingDayOne = budgetDAO.selectOneList();		
		return autoParkingDayOne;
	}
	
	
	@Override
	public List<Map<String, Object>> doAutoParking(MyBankVO myBankVO) {		
		return budgetDAO.doAutoParking(myBankVO);
	}
	
	@Override
	public void insertAutoDivSetting(Map<String, Object> divideMap) {
		budgetDAO.insertAutoDivSetting(divideMap);
	}
	

	@Override
	public void updateReBudgetSet(AutoDivideSettingVO reBudgetSet) {
		budgetDAO.updateReBudgetSet(reBudgetSet);
	}
	
}
