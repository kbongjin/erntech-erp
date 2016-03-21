package kr.co.enrtech.erp.contract;

import java.util.List;

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
	
	public ContractService() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public void insertContract(Contract contract){
		repository.insertContract(contract);
	}
	
	public List<Contract> getContractList(SearchListParam searchParam){
		return repository.getContractList(searchParam);
	}
	
	public int getContractListTotalCount(SearchListParam searchParam){
		
		return repository.getContractListTotalCount(searchParam);
	}
	
	public Contract getContract(int contractId){
		return repository.getContract(contractId);
	}
	
	public void updateContract(Contract contract){
		repository.updateContract(contract);
	}
	
	public void deleteContract(int contractId){
		repository.deleteContract(contractId);
	}

}
//end of ContractService.java