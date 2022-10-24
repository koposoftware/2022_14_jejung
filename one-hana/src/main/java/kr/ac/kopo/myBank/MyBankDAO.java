package kr.ac.kopo.myBank;

import java.util.List;
import java.util.Map;
import kr.ac.kopo.account.AccountVO;


public interface MyBankDAO {

	
	//update
	//void updateAccount(String accountNo);
	void updateAccount(AccountVO newAccount);

	//insert
	void insertNew(AccountVO newAccount);
	
	//select
	//MyBankVO selectNew(String accountNo);
	MyBankVO selectNew(AccountVO newAccount);
	
	
	
	
	
	
	//select
	//MyBankVO selectSuccess(String accountNo);
	MyBankVO selectSuccess(AccountVO newAccount2);

	
	
	//insert pocket
	/* void insertPocket(AddPocketVO newPocket); */

	List<PocketVO> getPocketList(Map<String, Object> paramMap);

	void insertPocketDetail(Map<String, Object> paramMap);

	void insertPockets(MyBankVO MyBank);


}
