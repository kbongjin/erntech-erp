package kr.co.enrtech.erp.contract;

import java.util.List;

import kr.co.enrtech.erp.common.Constans;
import kr.co.enrtech.erp.common.code.CommonCodeHandler;
import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Service
public class ContractService {
	

	@Autowired
	private ContractRepository repository;
	
	@Autowired
	private CommonCodeHandler codeHandler;
	
	public ContractService() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public void insertContract(Contract contract){
		repository.insertContract(contract);
	}
	
	public List<Contract> getContractList(SearchListParam searchParam){
		
		List<Contract> list = repository.getContractList(searchParam);
		return fillCodeNames(list);
	}
	
	public int getContractListTotalCount(SearchListParam searchParam){
		
		return repository.getContractListTotalCount(searchParam);
	}
	
	public Contract getContract(int contractId){
		Contract ctrt = repository.getContract(contractId);
		return fillCodeName(ctrt);
	}
	
	public void updateContract(Contract contract){
		repository.updateContract(contract);
	}
	
	public void deleteContract(int contractId){
		repository.deleteContract(contractId);
	}
	
	public List<Contract> fillCodeNames(List<Contract> list) {
		
		for (Contract contract : list) {
			fillCodeName(contract);
		}
		
		return list;
	}
	
	public Contract fillCodeName(Contract ctrt) {
		
		ctrt.setContractType1Nm(codeHandler.getCodeNm(Constans.GRP_CD_C_TYPE1, ctrt.getContractType1(), null));
		ctrt.setContractType2Nm(codeHandler.getCodeNm(Constans.GRP_CD_C_TYPE2, ctrt.getContractType2(), null));
		ctrt.setContractType3Nm(codeHandler.getCodeNm(Constans.GRP_CD_C_TYPE3, ctrt.getContractType3(), null));
		ctrt.setCnstrctWayNm(   codeHandler.getCodeNm(Constans.GRP_CD_C_WAY,   ctrt.getCnstrctWay(), null));
		ctrt.setStateNm(	 	codeHandler.getCodeNm(Constans.GRP_CD_C_STATE, ctrt.getState(), null));
		
		return ctrt;
	}

}
//end of ContractService.java