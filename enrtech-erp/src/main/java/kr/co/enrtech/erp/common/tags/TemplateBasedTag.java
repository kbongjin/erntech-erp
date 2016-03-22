
package kr.co.enrtech.erp.common.tags;


import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.PageContext;

import kr.co.enrtech.erp.common.util.TemplateUtils;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.servlet.tags.RequestContextAwareTag;



/**
 * <pre>
 * 템플릿 엔진을 사용하여 태그 라이브러리에 대한 모델과 UI를 분리하여 구성하도록 하는 상위 추상 클래스.
 * 
 * 템플릿은 항상 태그 클래스가 존재하는 위치의 template 패키지 이하에 존재해야 합니다.
 * 
 * 또한, 템플릿의 이름은 태그 클래스의 이름과 동일해야하고, 시작 태그일 경우 '.start', 종료 태그일 경우 '.end'가 붙어야 하며,
 * 확장자는 항상 '.ftl'이어야 합니다.
 * 
 * 예) sds.cloud.web.tags.CodeTag 태그 클래스의 경우 템플릿의 위치 및 이름
 * 
 *   -&gt; 시작 태그 템플릿 : sds/cloud/web/tags/template/CodeTag.start.ftl
 *   -&gt; 종료 태그 템플릿 : sds/cloud/web/tags/template/CodeTag.end.ftl 
 * </pre>
 * 
 * @author 권봉진
 */
public abstract class TemplateBasedTag extends RequestContextAwareTag {
	private static final long serialVersionUID = -5525886194286370889L;

	/**
	 * doStartTag 메소드에 의해서 호출되는 메소드로,
	 * 템플릿에 사용될 모델을 생성하고, 템플릿에 대한 결과를 출력하는 부분이 포함되어 있습니다.
	 * 
	 * @return same as TagSupport.doStartTag
	 * @throws Exception 태그 생성 중 발생하는 Exception
	 * @see org.springframework.web.servlet.tags.RequestContextAwareTag#doStartTagInternal()
	 */
	protected int doStartTagInternal() throws Exception {
		Map model = new HashMap();
		int returnValue = this.doBuildModelForStartTag(model);
		Class c = this.getClass();
		String fqcn = c.getName();
		int idx = fqcn.lastIndexOf(".");
		String templateName = "template/" + (idx > 0 ? fqcn.substring(idx + 1) : fqcn) + ".start.ftl";
		TemplateUtils.generate(templateName, c, model, this.pageContext.getOut());
		return returnValue;
	}//end of doStartTagInternal()
	
	/**
	 * 태그라이브러리에 설정된 정보를 가지고 템플릿을 위한 모델을 생성합니다. 
	 * 
	 * @param model 템플릿 생성을 위한 모델 객체
	 * @return same as TagSupport.doStartTag
	 * @throws Exception 템플릿을 위한 모델을 생성하는 중 발생하는 Exception
	 */
	protected abstract int doBuildModelForStartTag(Map model) throws Exception;
	
	/**
	 * 아무것도 구현하지 않은 상태를 의미하는 상수
	 */
	private static final int UNSUPPORTED_OPERATION = SKIP_PAGE;
	
	/**
	 * 템플릿에 사용될 모델을 생성하고, 템플릿에 대한 결과를 출력하는 부분이 포함되어 있습니다.
	 * 
	 * @return same as TagSupport.doEndTag
	 * @throws JspException 태그 생성 중 발생하는 Exception
	 * @see javax.servlet.jsp.tagext.TagSupport#doEndTag()
	 */
	public int doEndTag() throws JspException {		
		try {
			Map model = new HashMap();		
			int returnValue = this.doBuildModelForEndTag(model);
			if (returnValue == UNSUPPORTED_OPERATION) {
				return super.doEndTag();
			}//end if
			Class c = this.getClass();
			String fqcn = c.getName();
			int idx = fqcn.lastIndexOf(".");
			String templateName = "template/" + (idx > 0 ? fqcn.substring(idx + 1) : fqcn) + ".end.ftl";
			TemplateUtils.generate(templateName, c, model, this.pageContext.getOut());
			return returnValue;
		} catch (JspException ex) {
			logger.error(ex.getMessage(), ex);
			throw ex;
		} catch (RuntimeException ex) {
			logger.error(ex.getMessage(), ex);
			throw ex;
		} catch (Exception ex) {
			logger.error(ex.getMessage(), ex);
			throw new JspTagException(ex.getMessage());
		}//end try catch
	}//end of doEndTag()
	
	/**
	 * 태그라이브러리에 설정된 정보를 가지고 템플릿을 위한 모델을 생성합니다.
	 * 
	 * 이 메소드의 경우, 하위 클래스에서 오버라이드 해야 동작하며,
	 * 오버라이드하지 않을 경우, 동작하지 않습니다.
	 * 
	 * @param model 템플릿 생성을 위한 모델 객체
	 * @return same as TagSupport.doEndTag
	 * @throws Exception 템플릿을 위한 모델을 생성하는 중 발생하는 Exception
	 */
	protected int doBuildModelForEndTag(Map model) throws Exception {
		return UNSUPPORTED_OPERATION;
	}//end of doBuildModelForEndTag()
	
	/**
	 * Locale 객체를 리턴합니다.
	 * 
	 * Spring에서 제공하는 LocaleContextHolder를 이용합니다.
	 * 
	 * @return Locale 객체
	 */
	protected Locale getLocale() {
		return LocaleContextHolder.getLocaleContext().getLocale();
	}//end of getLocale()
	
	/**
	 * JSTL의 el을 지원하지 않는 경우에 대한 처리 및 model에 값을 설정하는 helper 메소드입니다.
	 * 
	 * @param model 값을 설정할 model 객체
	 * @param attrName 태그 라이브러리의 attribute 명
	 * @param pageContext PageContext 객체
	 * @throws Exception el 파싱 및 attribute에 값을 설정하는 중 발생하는 Exception
	 */
	protected void evaluateStringAndSetModel(Map model, String attrName, PageContext pageContext) throws Exception {
		Object attrValue = PropertyUtils.getProperty(this, attrName);
		model.put(attrName, attrValue);
	}//end of evaluateString()
	
	
}//end of TemplateBasedTag.java