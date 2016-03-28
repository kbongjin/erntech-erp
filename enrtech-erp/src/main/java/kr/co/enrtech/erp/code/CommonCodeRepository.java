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

	public List<CommonCode> getCommonCodeList(SearchListParam gridParam){
		return sqlSession.selectList("CommonCode.getCommonCodeList", gridParam);
	}
	
	public int getCommonCodeListTotalCount(SearchListParam gridParam){
		
		return sqlSession.selectOne("CommonCode.getCommonCodeListTotalCount", gridParam);
	}
	
	public CommonCode getCommonCode(CommonCode commonCode){
		return sqlSession.selectOne("CommonCode.getCommonCode", commonCode);
	}
	
	public void insertCommonCode(CommonCode commonCode){
		sqlSession.insert("CommonCode.insertCommonCode", commonCode);
	}
	
	public void updateCommonCode(CommonCode commonCode){
		sqlSession.update("CommonCode.updateCommonCode", commonCode);
	}
	
	public void deleteCommonCode(CommonCode commonCode){
		sqlSession.delete("CommonCode.deleteCommonCode", commonCode);
	}
}