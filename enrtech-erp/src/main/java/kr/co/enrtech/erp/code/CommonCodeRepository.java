package kr.co.enrtech.erp.code;

import java.util.List;

import kr.co.enrtech.erp.base.AbstractBaseDao;
import kr.co.enrtech.erp.common.code.CommonCode;
import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.stereotype.Repository;

/**
 * CommonCodeRepository
 *
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Repository
public class CommonCodeRepository extends AbstractBaseDao {

	/**
	 * CommonCodeRepository
	 *
	 * @param
	 * @exception
	 */
	public CommonCodeRepository() {
	}

	public List<CommonCode> getCommonCodeList(CommonCode gridParam){
		return sqlSession.selectList("enr.CommonCode.getCommonCodeList", gridParam);
	}
	
	public int getCommonCodeListTotalCount(CommonCode gridParam){
		
		return sqlSession.selectOne("enr.CommonCode.getCommonCodeListTotalCount", gridParam);
	}
	
	public CommonCode getCommonCode(CommonCode commonCode){
		return sqlSession.selectOne("enr.CommonCode.getCommonCode", commonCode);
	}
	
	public void insertCommonCode(CommonCode commonCode){
		sqlSession.insert("enr.CommonCode.insertCommonCode", commonCode);
	}
	
	public void updateCommonCode(CommonCode commonCode){
		sqlSession.update("enr.CommonCode.updateCommonCode", commonCode);
	}
	
	public void deleteCommonCode(CommonCode commonCode){
		sqlSession.delete("enr.CommonCode.deleteCommonCode", commonCode);
	}
}