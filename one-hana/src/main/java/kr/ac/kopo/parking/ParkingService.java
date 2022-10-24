package kr.ac.kopo.parking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.budget.AutoDivideVO;

public interface ParkingService {

	
	int getParkingSum(String accountNo);
	int getParkingBal(String accountNo);
	
	
	List<ParkingVO> getParkingData(String accountNo);
	List<ParkingVO> getParkingData2(String accountNo);
	
	
	void insertAutoParkingSet(Map<String, Object> parkingMap);
	
	List<Map<String,Object>> getParkingArea(String accountNo);
	List<Map<String, Object>> getParkingArea2(String accountNo);
	List<Map<String, Object>> getParkingArea3(String accountNo);
	
	






	

	

}
