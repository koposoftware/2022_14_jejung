package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.divide.DivideVO;
import kr.ac.kopo.myBank.MyBankVO;

public interface BudgetService {

	void updateIncome(Map<String, Object> incomeMap);

	void insertFixed(Map<String, Object> fixedMap);

	MyBankVO getIncomeData(String accountNo);

	List<FixedVO> getFixedData(Map<String, Object> insertMap);

	List<HashMap<String, Object>> getFixedSum(String accountNo);

	List<HashMap<String, Object>> getCalculation(String accountNo);

	List<AutoDivideVO> insertAutoDiv(Map<String, Object> divideMap);

	List<AutoDivideVO> selectDivList(Map<String, Object> divideMap);

	void updateParkingGoal(Map<String, Object> parkingMap);

	MyBankVO getParkingData(String accountNo);

	List<MyBankVO> showAutoParkingDayOne();

	//void doAutoParking(AutoDivideVO autoDivideVO);

	List<Map<String, Object>> doAutoParking(MyBankVO myBankVO);

	void insertAutoDivSetting(Map<String, Object> divideMap);

	void updateReBudgetSet(AutoDivideSettingVO reBudgetSet);


	
	
	//void insertAutoParking(int id);

}
