package kr.ac.kopo.savings;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SavingsServiceImpl implements SavingsService{

	@Autowired
	private SavingsDAO savingsDAO;
	
	@Override
	public List<Map<String, Object>> selectSavingsList(Map<String, Object> savingsList) {
		List<Map<String, Object>> savingList = savingsDAO.selectSavingsList(savingsList);
		return savingList;
	}
	
	@Override
	public List<Map<String, Object>> selectCompareList(List<String> checkList) {
		List<Map<String, Object>> compareSavingList = savingsDAO.selectCompareList(checkList);
		return compareSavingList;
	}
	
	
	/*
	 * @Override public List<Map<String, Object>> selectExpectedList(List<String>
	 * checkList) { List<Map<String, Object>> compareExpectedList =
	 * savingsDAO.selectExpectedList(checkList); return compareExpectedList; }
	 */
}
