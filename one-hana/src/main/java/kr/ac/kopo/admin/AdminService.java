package kr.ac.kopo.admin;

import java.util.List;

import kr.ac.kopo.savings.SavingsVO;

public interface AdminService {

	List<SavingsVO> selectProductList();

	void insertProduct(SavingsVO savingsVO);

}
