package kr.ac.kopo.myBank;

import java.util.List;
import java.util.Map;
import kr.ac.kopo.account.AccountVO;


public interface MyBankService {

	//void updateOne(String accountNo);
	void updateOne(AccountVO newAccount);
	
	void insertOne(AccountVO newAccount);
	
	//MyBankVO getNewAccount(String account);
	MyBankVO getNewAccount(AccountVO newAccount);
	
	
	
	
	//MyBankVO getAccount(String accountNo);
	MyBankVO getAccount(AccountVO newAccount2);
	
	
	/* void insertNewPoc(AddPocketVO newPocket); */

	List<PocketVO> getPocketList(Map<String, Object> paramMap);

	void insertPocketDetail(Map<String, Object> paramMap);

	void insertBasicPockets(MyBankVO MyBank);
}
