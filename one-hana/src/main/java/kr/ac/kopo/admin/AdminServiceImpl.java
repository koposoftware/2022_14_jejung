package kr.ac.kopo.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.savings.SavingsVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List<SavingsVO> selectProductList() {
		return adminDAO.selectProductList();
		
	}
	
	@Override
	public void insertProduct(SavingsVO savingsVO) {
		
		adminDAO.insertProduct(savingsVO);
	}
}
