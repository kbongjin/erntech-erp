
package kr.co.enrtech.erp.common.tags;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import kr.co.enrtech.erp.common.code.CommonCode;
import kr.co.enrtech.erp.common.code.CommonCodeHandler;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.taglibs.standard.tag.el.core.ExpressionUtil;
import org.springframework.context.MessageSource;
import org.springframework.util.StringUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


/**
 * <pre>
 * 공통코드에 대한 input option, radio 객체를 생성.
 *
 * 속성설명 
 * name : radio 객체의 input name.
 * group_cd : 그룹코드 (필수)
 * type : input type (select, radio) 또는 단순출력(print) 타입값 (기본값: select)
 * selected : option 기본선택값, radio 기본checked 값.
 * text : 코드명으로 보여줄 필드명 (code_nm(기본값), ref1, ref2, ref3 중에 하나)
 * styleClass : input class 속성.
 * style : input style 속성.
 *
 * Created on 2010-07-14
 * </pre>
 * 
 * @author 권봉진
 */
public class CodeTag extends TagSupport {
    
	private static final long serialVersionUID = 7323523693139839677L;
	
	protected static WebApplicationContext applicationContext;
	protected static CommonCodeHandler codeHandler;
	protected static MessageSource messageSource;
    protected static String MSG_PREFIX = "message:";
    
	protected final Log log = LogFactory.getLog(getClass());
	protected String name;	//radio input name.
	protected String group_id;
	protected String type = "select";	//select, radio, print 중 하나.
	protected String selected;
	protected String defaultSelected;
	protected String text = "codeName";
	protected String styleClass;
	protected String style;
	protected String prefix_cd;
	protected String event;
	protected String except_cds;
	protected String bgcolor;    //코드별 배경색깔을 달리 하기위해 (ref_val1, 2, 3 중 하나).
	protected int arrange;       //radio, checkbox 인경우 정렬해서 보여주기위한 한row의 column 값.
	protected String color;      //코드별 색깔을 달리 하기위해 (ref_val1, 2, 3 중 하나).
	protected String firstOption;
	protected String attr;


	public CodeTag() {
		super();
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setArrange(int arrange) {
		this.arrange = arrange;
	}

	public void setExcept_cds(String except_cds) {
		this.except_cds = except_cds;
	}

	public void setEvent(String event) {
		String event_ = null;

		try{

			event_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"onclick",        // 속성명
					event,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
		}
		this.event = event_;

	}

	public void setPrefix_cd(String prefix_cd) {
		String prefix_cd_ = null;

		try{

			prefix_cd_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"prefix_cd",        // 속성명
					prefix_cd,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
		}

		this.prefix_cd = prefix_cd_;
	}

	public void setStyle(String style) {

		@SuppressWarnings("unused")
		String style_ = null;

		try{

			style_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"style",        // 속성명
					style,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
		}

		this.style = style;
	}

	public void setStyleClass(String styleClass) {
		this.styleClass = styleClass;
	}

	public void setName(String name) {
		String name_ = null;

		try{

			name_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"name",        // 속성명
					name,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
		}

		this.name = name_;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setText(String text) {
		this.text = text;
	}

    public void setGroup_id(String groupId) {
        group_id = groupId;
    }

    public void setSelected(String selected) {

		String selected_ = null;

		try{

			selected_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"selected",        // 속성명
					selected,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
			selected_ = null;
		}

		this.selected = selected_;
	}

	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}

	public void setFirstOption(String firstOption) {
		this.firstOption = firstOption;
	}

	public void setDefaultSelected(String defaultSelected) {

		String defaultSelected_ = null;

		try{

			defaultSelected_ = (String)ExpressionUtil.evalNotNull(
					"code",         // 태그명
					"defaultSelected",        // 속성명
					defaultSelected,          // EL속성으로 넘어온 값(EL표현식)
					String.class,   // 반환될 값으로 기대되는 클래스타입
					this,
					pageContext);

		}catch(JspException e){
			//attribute is null;
		}

		this.defaultSelected = defaultSelected_;
	}
	
	public String getAttr() {
        return attr;
    }

    public void setAttr(String attr) {
        this.attr = attr;
    }

	@SuppressWarnings("unchecked")
	public String makeTag()throws Exception{
		StringBuffer tag = new StringBuffer();
		
		ArrayList list = codeHandler.getCodes(this.group_id, this.prefix_cd, this.except_cds);
		CommonCode codef = null;
		//int index = 1;
		//String style2 = null;

		int arrCnt = 0;

		if("radio".equals(type)){

			if(arrange > arrCnt){
				tag.append("<table width='100%' border='0'><tr>");
			}

			for(int i=0; i < list.size(); i++){

				if(i == 0 && arrange > arrCnt){
					tag.append("<td>");
				}else if(arrange > arrCnt && (i%arrange)==0){
					tag.append("</td></tr>\r\n<tr><td>");
				}else if(arrange > arrCnt){
					tag.append("</td><td>");
				}

				codef = (CommonCode)list.get(i);

				tag.append("<label for=\"");
				tag.append(this.name);
				tag.append(i+1);
				tag.append("\" ");

				if(!StringUtils.isEmpty(this.styleClass)){
					tag.append(" class=\"");
					tag.append(this.styleClass);
					tag.append("\" ");
				}

				if(!StringUtils.isEmpty(this.style)){
					tag.append(" style=\"");
					tag.append(this.style);
					tag.append("\" ");
				}
				tag.append(">");

				tag.append("<input type=\"radio\" name=\"");
				tag.append(this.name);
				tag.append("\" id=\"");
				tag.append(this.name);
				tag.append(i+1);
				tag.append("\" value=\"");
				tag.append(codef.getCode());
				tag.append("\" ");
				if(this.selected != null && this.selected.equals(codef.getCode())){
					tag.append("checked=\"checked\"");
				}else if(StringUtils.isEmpty(this.selected) && this.defaultSelected != null && this.defaultSelected.equals(codef.getCode())){
					tag.append("checked=\"checked\"");
				}
				if(!StringUtils.isEmpty(this.event)){
					tag.append("" + this.event + "");
				}

				tag.append(">");
				tag.append(getCodeName(codef));
				tag.append("</label>&nbsp;&nbsp;\r\n");
			}

			if(arrange > arrCnt){
				tag.append("</td>");

				for(int j= (list.size()%arrange); j < arrange; j++){
					tag.append("</td></td>");
				}
				tag.append("</tr></table>");
			}

		}else if("checkbox".equals(type)){

			if(arrange > arrCnt){
				tag.append("<table width='100%' border='0'><tr>");
			}

			for(int i=0; i < list.size(); i++){

				if(i == 0 && arrange > arrCnt){
					tag.append("<td>");
				}else if(arrange > arrCnt && (i%arrange)==0){
					tag.append("</td></tr>\r\n<tr><td>");
				}else if(arrange > arrCnt){
					tag.append("</td><td>");
				}

				codef = (CommonCode)list.get(i);
				tag.append("<input type=\"checkbox\" name=\"");
				tag.append(this.name);
				tag.append("\" id=\"");
				tag.append(this.name);
				tag.append(i+1);
				tag.append("\" value=\"");
				tag.append(codef.getCode());
				tag.append("\" ");
				if(this.selected != null && this.selected.indexOf(codef.getCode()) > -1){
					tag.append("checked=\"checked\"");
				}else if(StringUtils.isEmpty(this.selected) && this.defaultSelected != null && this.defaultSelected.indexOf(codef.getCode())> -1){
					tag.append("checked=\"checked\"");
				}
				if(!StringUtils.isEmpty(this.event)){
					tag.append("" + this.event + "");
				}
				if(!StringUtils.isEmpty(this.styleClass)){
					tag.append(" class=\"");
					tag.append(this.styleClass);
					tag.append("\" ");
				}

				if(!StringUtils.isEmpty(this.style)){
					tag.append(" style=\"");
					tag.append(this.style);
					tag.append("\" ");
				}
				tag.append("><label for=\"");
				tag.append(this.name);
				tag.append(i+1);
				tag.append("\">");
				tag.append(getCodeName(codef));
				tag.append("</label>&nbsp;&nbsp;\r\n");
			}

			if(arrange > arrCnt){
				tag.append("</td>");

				for(int j= (list.size()%arrange); j < arrange; j++){
					tag.append("</td></td>");
				}
				tag.append("</tr></table>");
			}

		}else if("print".equals(type)){
		    
		    for(int i=0; i < list.size(); i++){
                codef = (CommonCode)list.get(i);
                if(selected != null && selected.equals(codef.getCode())){
                    if(!StringUtils.isEmpty(color)){
                        tag.append("<font color='"+BeanUtils.getProperty(codef, color)+"'>");
                        tag.append(getCodeName(codef));
                        tag.append("</font>");
                    }else{
                        tag.append(getCodeName(codef));
                    }
                }
            }
            if(tag.length() == 0) tag.append("-");

		}else if("select".equals(type)){

			tag.append("<select name=\"");
			tag.append(this.name);
			tag.append("\" id=\"");
			tag.append(this.name);
			tag.append("\"");

			if(!StringUtils.isEmpty(this.styleClass)){
				tag.append(" class=\"");
				tag.append(this.styleClass);
				tag.append("\" ");
			}
			if(!(StringUtils.isEmpty(style) && StringUtils.isEmpty(bgcolor))){
				tag.append(" style=\"");
				tag.append(!StringUtils.isEmpty(style) ? style + ";" : "");
				tag.append(!StringUtils.isEmpty(bgcolor) ? "background-color:"+ bgcolor+";" : "");
				tag.append("\" ");
			}

			if(!StringUtils.isEmpty(this.event)){
				tag.append("" + this.event + " ");
			}
			
			if(!StringUtils.isEmpty(this.attr)){
				tag.append("");
				tag.append(this.attr);
				tag.append(" ");
			}

			tag.append(">");
			if(!StringUtils.isEmpty(firstOption)){
			    
				tag.append("<option value=\"\">");
				tag.append(this.firstOption);
				tag.append("</option>");
			}

			for(int i=0; i < list.size(); i++){
				codef = (CommonCode)list.get(i);
				tag.append("<option value=\"");
				tag.append(codef.getCode());
				tag.append("\" ");
				if(selected != null && selected.equals(codef.getCode())){
					tag.append("selected=\"selected\"");
				}else if(StringUtils.isEmpty(this.selected) && this.defaultSelected != null && this.defaultSelected.equals(codef.getCode())){
					tag.append("selected=\"selected\"");
				}

				tag.append(">");
				tag.append(getCodeName(codef));
				tag.append("</option>\r\n");
			}
			tag.append("</select>");
		}

		return tag.toString();
	}

	@Override
	public int doEndTag() throws JspException {
		try{
		    
		    if(applicationContext == null){
	            applicationContext = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        }
	        if(codeHandler == null){
	            codeHandler = applicationContext.getBean(CommonCodeHandler.class);
	        }
	        if(messageSource == null){
	            messageSource = applicationContext.getBean(MessageSource.class);
	        }
	        
			pageContext.getOut().print(makeTag());

		}catch(Exception e){
			log.error("aof:code 에러",e);
			throw new JspException(e);
		}

		return EVAL_PAGE;
	}
	
	/**
	 * <pre>
	 * 코드명 Locale 적용.
	 * </pre>
	 * @param commCd
	 * @return
	 * @throws Exception
	 */
	private String getCodeName(CommonCode commCd)throws Exception{
	    String codeName = "";
	    if(this.text != null && this.text.equals("codeName")){
	        //Locale locale = SpringMvcUtil.getLocale((HttpServletRequest)this.pageContext.getRequest());
	        //codeName = codeHandler.getCodeNm(commCd.getGrop_code_id(), commCd.getComn_cdvl(), locale.getLanguage());
	    	codeName = commCd.getCodeNm();
	    }else if(this.text != null){
	        codeName = BeanUtils.getProperty(commCd, text);
	    }
	    
	    return codeName;
	}
	
	/**
	 * <pre>
	 * firstOption 에 message code 를 연동하기위한 함수.
	 * </pre>
	 * @return
	 
	protected String getFirstText(){
	    String firstText = this.firstOption;
	    int pos = this.firstOption.indexOf(MSG_PREFIX);
	    if(pos == 0){
	        firstText = SpringMvcUtil.getMessage(messageSource, this.firstOption.substring(MSG_PREFIX.length()), null, 
	                (HttpServletRequest)pageContext.getRequest());
	        
	    }
	    
	    return firstText;
	}*/
}
