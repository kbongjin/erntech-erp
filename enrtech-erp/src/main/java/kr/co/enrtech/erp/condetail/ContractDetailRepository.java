package kr.co.enrtech.erp.condetail;

import java.util.List;

import kr.co.enrtech.erp.base.AbstractBaseDao;
import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.stereotype.Repository;

/**
 * ContractDetailRepository
 *
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Repository
public class ContractDetailRepository extends AbstractBaseDao {

	/**
	 * ContractDetailRepository
	 *
	 * @param
	 * @exception
	 */
	public ContractDetailRepository() {
	}

	public List<ContractDetail> getContractDetailList(SearchListParam gridParam){
		return sqlSession.selectList("ContractDetail.getContractDetailList", gridParam);
	}
	
	public int getContractDetailListTotalCount(SearchListParam gridParam){
		
		return sqlSession.selectOne("ContractDetail.getContractDetailListTotalCount", gridParam);
	}
	
	public ContractDetail getContractDetail(ContractDetail contractDetail){
		return sqlSession.selectOne("ContractDetail.getContractDetail", contractDetail);
	}
	
	public void insertContractDetail(ContractDetail contractDetail){
		sqlSession.insert("ContractDetail.insertContractDetail", contractDetail);
	}
	
	public void updateContractDetail(ContractDetail contractDetail){
		sqlSession.update("ContractDetail.updateContractDetail", contractDetail);
	}
	
	public void deleteContractDetail(ContractDetail contractDetail){
		sqlSession.delete("ContractDetail.deleteContractDetail", contractDetail);
	}
}