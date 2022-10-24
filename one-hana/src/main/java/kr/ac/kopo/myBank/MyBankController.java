package kr.ac.kopo.myBank;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import kr.ac.kopo.account.AccountService;
import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.member.MemberDAO;
import kr.ac.kopo.member.MemberVO;

@Controller
public class MyBankController {

	@Autowired
	private MyBankService mybankService;

	@Autowired
	private AccountService accountService;

	/**
	 * 1. 최종 통장 전환 (service 3개 호출)
	 */
	@Transactional
	@PostMapping("/changeSuccess")
	public String finalChange(HttpServletRequest request, HttpSession session) {

		String accountNo = request.getParameter("accountNo");
		int balance = Integer.parseInt(request.getParameter("balance"));
		
		MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");

	    //System.out.println("AccountNo랑 loginVO 가져옴? : " + accountNo + loginVO);
		
		AccountVO newAccount = new AccountVO();
		newAccount.setAccountNo(accountNo);
		newAccount.setBalance(balance);
		newAccount.setId(loginVO.getId());

		/*
		 * 1. t_account 에서 accountName을 '내서비스통장' 으로 update 2. t_mybank 에서 고객정보 그대로
		 * insert (balance는 basicBal로) 3. changeSuccess.jsp에서 뿌려줄 전환 성공한 내서비스통장의 정보를
		 * select 쿼리문
		 */

		// 1. 서비스 호출할 때 (accountNo) 가져가기
		// 2. 서비스 호출할 때 (newAccount) 가져가기

	//	mybankService.updateOne(accountNo);
	//	System.out.println("업데이트 성공");
		
		mybankService.updateOne(newAccount);
		System.out.println("업데이트 성공");

		mybankService.insertOne(newAccount);
		System.out.println("인서트 성공");

		//MyBankVO MyBank = mybankService.getNewAccount(accountNo);	
		MyBankVO MyBank = mybankService.getNewAccount(newAccount);	
		System.out.println(MyBank + " 셀렉트성공");

		
		
		
		
		request.setAttribute("MyBank", MyBank); // request에 저장해주자
		session.setAttribute("accountNo", accountNo);
		
		////////////////////////////////////////////////////////////////////////////////
		
		//기본포켓 3개 넣어주고 기본주머니에 잔액 넣기
		mybankService.insertBasicPockets(MyBank);
		
	
		return "/myBank/changeSuccess";
	}

	/**
	 * 2. 내서비스통장 메인화면 (조회) (changing.jsp에서 통장 전환 후 '내서비스통장 확인하러 가기' 버튼 서밋)
	 */
	@GetMapping("/mybankMain")
	public String showMain(HttpServletRequest request, HttpSession session) {

		//String accountNo = request.getParameter("accountNo");
		String accountNo = (String)session.getAttribute("accountNo");
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		
		
		AccountVO newAccount2 = new AccountVO();
		newAccount2.setAccountNo(accountNo);
		//newAccount2.setBalance(balance);
		newAccount2.setId(loginVO.getId());
		
		
		
		MyBankVO MyAccount = new MyBankVO();
		//MyAccount = mybankService.getAccount(accountNo); 원래
		MyAccount = mybankService.getAccount(newAccount2);
		
		
		
		// tbl_bank_detail 을 where accountNo = #{accountNo} 로 넣고 count(*)
		// 만약 count(*) == 0 insert 후 select
		// 사회초년생 아니면 select
		request.setAttribute("MyAccount", MyAccount);
		
		
		return "/myBank/mybankMain";
	}

	
	
	@ResponseBody
	@RequestMapping("/addPocketAjax")
	public String addPocketAjax(@RequestParam("accountNo") String accountNo, @RequestParam("pocketName") String pocketName,
			@RequestParam("pocketDtl") String pocketDtl, HttpSession session) {
		List<PocketVO> pocketList = new ArrayList<PocketVO>();
		//System.out.println("accountNo : " + accountNo);
		//System.out.println("id : " + session.getAttribute("loginVO"));
		MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");
		
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("accountNo", accountNo);
		paramMap.put("pocketName", pocketName);
		paramMap.put("pocketDtl", pocketDtl);
		paramMap.put("id", loginVO.getId());

		System.out.println("pocket : " + paramMap);
		mybankService.insertPocketDetail(paramMap);

		return "success";
	}
	
	
	
	@ResponseBody
	@RequestMapping("/pocketSearch")
	public ModelAndView pocketAjax(@RequestParam("accountNo") String accountNo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		List<PocketVO> pocketList = new ArrayList<PocketVO>();
		//System.out.println("accountNo : " + accountNo);
		//System.out.println("id : " + session.getAttribute("loginVO"));
		
		MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("accountNo", accountNo);
		paramMap.put("id", loginVO.getId());

		pocketList = mybankService.getPocketList(paramMap);
		//myPocketList.jsp 갔다가 가져온 값들을 pocketList로 저장
		
		System.out.println("pocketList : " + pocketList);

		mav.addObject("pocketList", pocketList); //모델에 저장 (근데 모델앤뷰가 리퀘스트영역)
		mav.setViewName("/myBank/myBankPocketList");
		return mav;
	}

	
	
	
}
