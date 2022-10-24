package kr.ac.kopo.admin;

import java.util.List;

import kr.ac.kopo.savings.SavingsVO;

public interface AdminDAO {

	List<SavingsVO> selectProductList();

	void insertProduct(SavingsVO savingsVO);

}
