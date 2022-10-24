package kr.ac.kopo.savings;

import java.util.List;
import java.util.Map;

public interface SavingsService {

	List<Map<String, Object>> selectSavingsList(Map<String, Object> savingsList);

	List<Map<String, Object>> selectCompareList(List<String> checkList);

	//List<Map<String, Object>> selectExpectedList(List<String> checkList);

}
