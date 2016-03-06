
package kr.co.enrtech.erp.base;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <pre>
 * 
 * </pre>
 * @author Bongjin Kwon
 * @version 1.0
 */
public abstract class AbstractBaseDao {
	
	@Autowired
	protected SqlSession sqlSession;
}
//end of AbstractBaseDao.java