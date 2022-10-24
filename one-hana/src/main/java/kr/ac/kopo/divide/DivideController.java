package kr.ac.kopo.divide;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DivideController {

	@Autowired
	private DivideService divideService;
	
	
	@Transactional
	@ResponseBody
    @RequestMapping("/doDivideAjax") 
    public String doDivideAjax(
			  						 @RequestParam("divAmount") int divAmount,
			                         @RequestParam("fromPocket") String fromPocket,
			/* @RequestParam("accountNo") String accountNo, */
			                         @RequestParam("toPocket") String toPocket,
			                         HttpServletRequest request
			                         ) {
		  
	//	ModelAndView mav = new ModelAndView();

		Map<String, Object> divMap = new HashMap<>();
	//	divMap.put("accountNo", accountNo);  //divisionVO에 accountNo 없음
		divMap.put("divAmount", divAmount);
		divMap.put("fromPocket", fromPocket);
		divMap.put("toPocket", toPocket);
		
		//프로시저 호출
		divideService.getDivList(divMap);
		
		//select 호출
		List<DivideVO> divList = new ArrayList<DivideVO>();
		divList = divideService.selectDivList(divMap);
		request.setAttribute("divList", divList);
		System.out.println("divList 받아오나요? : " + divList);

		 return "success";
	  }

}