
package kr.co.enrtech.erp.common.tags;

import java.util.Collection;
import java.util.Map;

import javax.servlet.jsp.JspException;

import org.apache.taglibs.standard.tag.el.core.ExpressionUtil;
import org.springframework.context.MessageSource;

/**
 * <pre>
 * 
 * </pre>
 * 
 * @author 권봉진
 */
public class SelectTag extends TemplateBasedTag {

    private static MessageSource messageSource;
    
    private String name;
    private Collection<ValueAndText> collections;
    private String selected;
    private String styleClass;
    private String style;
    private String bgcolor;
    private String firstOption;
    private boolean emptyVisible = true;
    private String textSuffix = "";
    private String attr;
    private String id;
    
    public SelectTag() {
        // TODO Auto-generated constructor stub
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAttr() {
        return attr;
    }

    public void setAttr(String attr) {
        this.attr = attr;
    }

    public String getTextSuffix() {
        return textSuffix;
    }

    public void setTextSuffix(String textSuffix) {
        this.textSuffix = textSuffix;
    }

    public String getName() {
        return name;
    }

    public Collection<ValueAndText> getCollections() {
        return collections;
    }

    public String getSelected() {
        return selected;
    }

    public String getStyleClass() {
        return styleClass;
    }

    public String getStyle() {
        return style;
    }

    public String getBgcolor() {
        return bgcolor;
    }

    public String getFirstOption() {
        return firstOption;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCollections(Collection<ValueAndText> collections) {
        this.collections = collections;
    }

    public void setSelected(String selected) {
        String selected_ = null;

        try{

            selected_ = (String)ExpressionUtil.evalNotNull(
                    "select",         // 태그명
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

    public void setStyleClass(String styleClass) {
        this.styleClass = styleClass;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public void setBgcolor(String bgcolor) {
        this.bgcolor = bgcolor;
    }

    public void setFirstOption(String firstOption) {
        this.firstOption = firstOption;
    }

    public boolean isEmptyVisible() {
        return emptyVisible;
    }

    public void setEmptyVisible(boolean emptyVisible) {
        this.emptyVisible = emptyVisible;
    }

    @Override
    protected int doBuildModelForStartTag(Map model) throws Exception {
        
        this.evaluateStringAndSetModel(model, "name",       this.pageContext);
        this.evaluateStringAndSetModel(model, "collections",this.pageContext);
        this.evaluateStringAndSetModel(model, "selected",   this.pageContext);
        this.evaluateStringAndSetModel(model, "styleClass", this.pageContext);
        this.evaluateStringAndSetModel(model, "style",      this.pageContext);
        this.evaluateStringAndSetModel(model, "bgcolor",    this.pageContext);
        //this.evaluateStringAndSetModel(model, "firstOption", this.pageContext);
        this.evaluateStringAndSetModel(model, "emptyVisible", this.pageContext);
        //this.evaluateStringAndSetModel(model, "textSuffix", this.pageContext);
        this.evaluateStringAndSetModel(model, "attr", this.pageContext);
        this.evaluateStringAndSetModel(model, "id", this.pageContext);
        
        //model.put("firstOption", getMessage(this.firstOption));
        model.put("firstOption", this.firstOption);
        model.put("textSuffix", this.textSuffix);
        
        return SKIP_BODY;
    }
    /*
    private String getMessage(String msgText){
        if(msgText == null){
            return null;
        }
        if(messageSource == null){
            WebApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
            messageSource = applicationContext.getBean(MessageSource.class);
        }
        String firstText = msgText;
        //int pos = msgText.indexOf(CodeTag.MSG_PREFIX);
        int pos = msgText.indexOf("message:");
        if(pos == 0){
            //firstText = SpringMvcUtil.getMessage(messageSource, msgText.substring(CodeTag.MSG_PREFIX.length()), null, 
            //        (HttpServletRequest)pageContext.getRequest());
            firstText = SpringMvcUtil.getMessage(messageSource, msgText.substring("message:".length()), null, 
                    (HttpServletRequest)pageContext.getRequest());
            
        }
        
        return firstText;
    }*/

}
