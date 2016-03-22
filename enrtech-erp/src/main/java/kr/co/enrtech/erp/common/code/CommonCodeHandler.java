
package kr.co.enrtech.erp.common.code;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;



/**
 * 공통 코드 목록 전역 저장소.
 *
 * Created on 2010. 7. 15
 * @author 권봉진
 */
@Service
public class CommonCodeHandler implements InitializingBean {
    
    protected final Logger logger = LoggerFactory.getLogger(CommonCodeHandler.class);
	
	private static final String CODE_GROUPS = "groups";

	Map allCodes = new HashMap();
	
    @Autowired
	protected SqlSession dao;
	
	private static final String Y = "Y";
	
	
	public CommonCodeHandler() {
	}

	/**
	 * <pre>
	 * group code 가져오기.
	 * </pre>
	 *
	 * @return
	 */
	/*public ArrayList getGroups(){
		
		Map allCodes = getAllCodes();
		
	    return (ArrayList)allCodes.get(CODE_GROUPS);
	}*/

	/**
	 * cd_grp 의 코드리스트를 반환한다.
	 * @param cd_grp
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public ArrayList getCodes(String cd_grp){

	    Map allCodes = getAllCodes();
	    if(allCodes == null) return null;
	    
	    ArrayList codes = (ArrayList)allCodes.get(cd_grp);
	    
	    if(codes == null){
	    	//캐시에 없으면 db query.
	    	try{
	    		codes = (ArrayList)dao.selectList("CommonCode.getCommonCodeList", cd_grp);
	    		//StringUtil.changeModelListCharset(codes, new String[]{"cdnm"});
	    		allCodes.put(cd_grp, codes);
	    	} catch (Exception e) {
				logger.error(e.toString(), e);
			}
	    }
		
	    //return (ArrayList)allCodes.get(cd_grp);
	    return codes;
	}
	
	@SuppressWarnings("unchecked")
	private Map getAllCodes(){
	   
        return allCodes;
	}
	
	/**
	 * prefix_cd값으로 시작하는 코드리스트만 가져온다.
	 * 
	 * @param cd_grp
	 * @param prefix_cd		코드 앞글자가 포함된것들만 가져오고싶을때.
	 * @param except_cds    특정 코드들을 제외하고 싶을때.
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public ArrayList getCodes(String cd_grp, String prefix_cd, String except_cds){
		ArrayList list = getCodes(cd_grp);
		ArrayList result = new ArrayList();
		CommonCode codef = null;
		if(list != null ){
			
			for(Iterator itr = list.iterator(); itr.hasNext();){
				codef = (CommonCode)itr.next();
				if(!StringUtils.isEmpty(except_cds)){
					if(except_cds.indexOf(codef.getCode()) > -1) continue;
				}
				result.add(codef);
			}
			
		}
		
		return result;
	}
	
	/*public static void setCodes(String group_cd, ArrayList codes){
		allCodes.put(group_cd, codes);
	}*/
	
	/**
	 * 해당 코드 정보 가져오기.
	 * @param cd_grp
	 * @param code
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public CommonCode getCode(String cd_grp, String code){
		ArrayList list = getCodes(cd_grp);
		CommonCode codef = null;
		if(list != null && code != null && !code.equals("")){
			for(Iterator itr = list.iterator(); itr.hasNext();){
				codef = (CommonCode)itr.next();
				if(codef.getCode().equals(code)){
					break;
				}else{
					codef = new CommonCode();
				}
			}
		}
		
		return codef;
	}
	
	/**
	 * <pre>
	 * 코드명 가져오기.
	 * </pre>
	 *
	 * @param cd_grp
	 * @param code
	 * @return
	 */
	public String getCodeNm(String cd_grp, String code, String lang_cd){
		CommonCode codef = getCode(cd_grp, code);
		
		if(codef == null){
		    return "";
		}
		
		return codef.getCodeNm();
	}
	
	
	@SuppressWarnings("unchecked")
	private void loadCodesProcess(){
	    logger.info("공통 코드 loading...");
		
		List list = new ArrayList();
		
		try {
			list = dao.selectList("CommonCode.getCommonCodeList");
			//StringUtil.changeModelListCharset(list, new String[]{"cdnm"});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error(e.toString(), e);
		}

		List groups = new ArrayList();
		
		CommonCode codef = null;
		ArrayList codes = null;
		int cntCodes = 0;
		
		String cd_grp = "";
		for(int i =0; i < list.size(); i++){
			codef = (CommonCode)list.get(i);
			String temp = codef.getGropId();
			
			if(!cd_grp.equals(temp)){
				codes = new ArrayList();
				allCodes.put(temp, codes);
				groups.add(codef);
			}
			
			cntCodes++;
			codes.add(codef);
			cd_grp = temp;
		}
		
		allCodes.put(CODE_GROUPS, groups);
		
		logger.info("공통 코드 완료 (총: {}개).", cntCodes);
		
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		loadCodesProcess();
	}
	
}
