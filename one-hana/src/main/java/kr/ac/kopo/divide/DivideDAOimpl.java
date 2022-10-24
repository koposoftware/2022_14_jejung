package kr.ac.kopo.divide;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DivideDAOimpl implements DivideDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<DivideVO> getDivList(Map<String, Object> divMap) {
	
		System.out.println(divMap);
		List<DivideVO> divList = sqlSessionTemplate.selectList("divide.DivideDAO.getDivList", divMap);
		
		return divList;
		//프로시저 반환값 없어서 셀렉트원썼다 반환값 걍 divideVO로 대충 받고 아무데서도 안쓰면 그만 
		
		
	}
	
	
	@Override
	public List<DivideVO> selectDivList(Map<String, Object> divMap) {
		return sqlSessionTemplate.selectList("divide.DivideDAO.selectDivList", divMap);
	}

}
