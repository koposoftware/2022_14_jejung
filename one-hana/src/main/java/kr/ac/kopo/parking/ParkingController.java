package kr.ac.kopo.parking;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ParkingController {

	@Autowired
	private ParkingService parkingService;
	
	
	@GetMapping("/myParkingMain")
	public String goParkingMain() {
		return "/myParking/myParkingMain";
	}
	

	@ResponseBody
	@RequestMapping("/getParkingSum")
	public Map<String,Object> parkingMain1(@RequestParam("accountNo") String accountNo) {
		
		int parkingSum = parkingService.getParkingSum(accountNo);
		//System.out.println("parkingSum : " + parkingSum);
		
		int parkingBal = parkingService.getParkingBal(accountNo);
		//System.out.println("parkingBal : " + parkingBal);
		
		Map<String, Object> parkingMap = new HashMap<>();
		parkingMap.put("parkingSum", parkingSum);
		parkingMap.put("parkingBal", parkingBal);

		return parkingMap;
	}
	
	
	@ResponseBody
	@GetMapping("/getParkingData")
	public Map<String,Object> parkingMain(@RequestParam("accountNo") String accountNo) {
	//public List<HashMap<String, Object>> parkingMain(@RequestParam("id") String id) {
			
		//고정비 파킹 리스트
		
		//POCKETCODE=2
		//List<HashMap<String, Object>> parkingList = parkingService.getParkingData(accountNo);
		List<ParkingVO> parkingList = parkingService.getParkingData(accountNo);
		//POCKETCODE=3
		List<ParkingVO> parkingList2 = parkingService.getParkingData2(accountNo);
		//System.out.println("parkingList2 생호ㅏㄹ비 : " + parkingList2);
		
		
		Map<String, Object> parkingHistoryMap = new HashMap<>();
		parkingHistoryMap.put("parkingList", parkingList);
		parkingHistoryMap.put("parkingList2", parkingList2);
		System.out.println("parkingHistoryMap : " + parkingHistoryMap);
		
		
		return parkingHistoryMap;
	}
	
	
	@ResponseBody
	@GetMapping("/getParkingArea")
	public List<Map<String,Object>> getParkingArea(@RequestParam("accountNo") String accountNo) {
		
		List<Map<String,Object>> parkingAreaList = parkingService.getParkingArea(accountNo);
		//System.out.println("parkingAreaList : " + parkingAreaList);
		return parkingAreaList;
	}

	
	@ResponseBody
	@GetMapping("/getParkingArea2")
	public Map<String,Object> getParkingArea2(@RequestParam("accountNo") String accountNo) {
		
		List<Map<String,Object>> parkingAreaList2 = parkingService.getParkingArea2(accountNo);
		//System.out.println("parkingAreaList2 : " + parkingAreaList2);
		
		List<Map<String,Object>> parkingAreaList3 = parkingService.getParkingArea3(accountNo);
		//System.out.println("parkingAreaList3 : " + parkingAreaList3);
		
		Map<String, Object> parkingAreaMap = new HashMap<>();
		parkingAreaMap.put("parkingAreaList2", parkingAreaList2);
		parkingAreaMap.put("parkingAreaList3", parkingAreaList3);
		//System.out.println("parkingAreaMap : " + parkingAreaMap);
		
		
		return parkingAreaMap;
	}


}
