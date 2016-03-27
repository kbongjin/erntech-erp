package kr.co.enrtech.erp.condetail;

import java.util.List;

import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Service
public class ContractDetailService {

	@Autowired
	private ContractDetailRepository repository;
	
	public ContractDetailService() {
		// TODO Auto-generated constructor stub
	}
	
	public void insertContractDetail(ContractDetail contractDetail){
		repository.insertContractDetail(contractDetail);
	}
	
	public List<ContractDetail> getContractDetailList(SearchListParam gridParam){
		return repository.getContractDetailList(gridParam);
	}
	
	public int getContractDetailListTotalCount(SearchListParam gridParam){
		
		return repository.getContractDetailListTotalCount(gridParam);
	}
	
	public ContractDetail getContractDetail(ContractDetail contractDetail){
		return repository.getContractDetail(contractDetail);
	}
	
	public void updateContractDetail(ContractDetail contractDetail){
		repository.updateContractDetail(contractDetail);
	}
	
	public void deleteContractDetail(ContractDetail contractDetail){
		repository.deleteContractDetail(contractDetail);
	}

}
//end of ContractDetailService.java