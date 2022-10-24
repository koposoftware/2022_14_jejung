package kr.ac.kopo.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.savings.SavingsVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<SavingsVO> selectProductList() {
		return sqlSessionTemplate.selectList("admin.AdminDAO.selectProductList");

	}
	
	@Override
	public void insertProduct(SavingsVO savingsVO) {
		sqlSessionTemplate.insert("admin.AdminDAO.insertProduct", savingsVO);
	}
}
