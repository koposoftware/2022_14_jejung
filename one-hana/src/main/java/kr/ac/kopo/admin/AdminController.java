package kr.ac.kopo.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.myBank.PocketVO;
import kr.ac.kopo.savings.SavingsVO;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("/indexAdmin")
	public String indexAdmin() {
		return "/admin/indexAdmin";
	}
	
	
	@GetMapping("/productManage") 
	public ModelAndView productManage() {
		ModelAndView mav = new ModelAndView();
		
		List<SavingsVO> productList = new ArrayList<SavingsVO>();
		
		productList = adminService.selectProductList();
		
		//System.out.println("productList : " + productList);
		
		mav.addObject("productList", productList); //모델에 저장 (근데 모델앤뷰가 리퀘스트영역)
		mav.setViewName("/admin/productManage");
		return mav;
	}
	
	@GetMapping("/newProduct")
	public String newProduct() {
		return "/admin/newProduct";
	}
	
	
	@PostMapping("/insertPro")
	public String insertPro(SavingsVO savingsVO) {
		
		adminService.insertProduct(savingsVO);
		System.out.println("insert 성공");
		
		return "redirect:/productManage";
	}
}
