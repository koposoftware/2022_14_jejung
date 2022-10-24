package kr.ac.kopo.divide;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DivideServiceImpl implements DivideService {

	@Autowired
	private DivideDAO divideDAO;
	
	@Override
	public List<DivideVO> getDivList(Map<String, Object> divMap) {
		return divideDAO.getDivList(divMap);
	}

	@Override
	public List<DivideVO> selectDivList(Map<String, Object> divMap) {
		
		List<DivideVO> divList = divideDAO.selectDivList(divMap);
		return divList;
	}

	
	
	
}
