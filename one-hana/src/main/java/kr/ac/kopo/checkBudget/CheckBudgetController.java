package kr.ac.kopo.checkBudget;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.budget.AutoDivideVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.myBank.PocketVO;


@Controller
public class CheckBudgetController {

	@Autowired
	private CheckBudgetService checkBudgetService;
	
	
	@GetMapping("/checkBudgetMain")
	public String goCheckBudgetMain() {
		return "/checkBudget/checkBudgetMain";
	}
	
	
	@ResponseBody
	@GetMapping("/getBudgetGraphData")
	public Map<String,Object> getBudgetGraphData(@RequestParam("id") String id, @RequestParam("accountNo") String accountNo) {
		
		//autoDivideAmount 불러오기
		List<AutoDivideSettingVO> settingAmountList = checkBudgetService.getBudgetSettingAmount(accountNo);
		//System.out.println("settingAmountList : " + settingAmountList);
		List<DayVO> secondConsumeList = checkBudgetService.getMonthConsumeList2(id);
		//System.out.println("secondConsumeList : " + secondConsumeList);
		List<DayVO> thirdConsumeList = checkBudgetService.getMonthConsumeList(id);
		//System.out.println("thirdConsumeList : " + thirdConsumeList);
		List<DayVO> consumeNameList = checkBudgetService.getConsumeNameList(id);
		//System.out.println("consumeNameList : " + consumeNameList);
		
		Map<String,Object> budgetGraphMap = new HashMap<>();
		budgetGraphMap.put("settingAmountList", settingAmountList);
		budgetGraphMap.put("secondConsumeList", secondConsumeList);
		budgetGraphMap.put("thirdConsumeList", thirdConsumeList);
		budgetGraphMap.put("consumeNameList", consumeNameList);
		//System.out.println("budgetGraphMap : " + budgetGraphMap);
		
		return budgetGraphMap;
	}
	
	
	@ResponseBody
	@GetMapping("/intoReBudgetSet")
	public List<PocketVO> intoReBudgetSet(@RequestParam("id") String id, @RequestParam("accountNo") String accountNo) {
		
		Map<String,Object> reBudgetMap = new HashMap<>();
		reBudgetMap.put("id", id);
		reBudgetMap.put("accountNo", accountNo);
		
		List<PocketVO> reBudgetSet = checkBudgetService.getReBudgetPocketList(reBudgetMap);
		System.out.println(reBudgetSet + "reBudgetSet");
		return reBudgetSet;
	}
	
	@ResponseBody
	@GetMapping("/doReBudgetSet")
	public void doReBudgetSet(@RequestParam("accountNo") String accountNo,
							  @RequestParam("toPocket") String toPocket,
							  @RequestParam("autoDivDate") String autoDivDate,
			                  @RequestParam("divAmount") String divAmount) {
		
		
		Map<String,Object> reBudgetMap2 = new HashMap<>();
		reBudgetMap2.put("accountNo", accountNo);
		reBudgetMap2.put("toPocket", toPocket);
		reBudgetMap2.put("autoDivDate", autoDivDate);
		reBudgetMap2.put("divAmount", divAmount);
		
		checkBudgetService.updateReBudgetSet(reBudgetMap2);
	}


	@ResponseBody
	@GetMapping("/changeModal")
	public List<AutoDivideVO> changeModal(@RequestParam("accountNo") String accountNo, @RequestParam("toPocket") String toPocket) {
		
		Map<String,Object> reBudgetMap3 = new HashMap<>();
		reBudgetMap3.put("accountNo", accountNo);
		reBudgetMap3.put("toPocket", toPocket);
		
		List<AutoDivideVO> changeModalList = checkBudgetService.selectChangeModal(reBudgetMap3);
		System.out.println("changeModalList :" + changeModalList);
		return changeModalList;
	}

}
