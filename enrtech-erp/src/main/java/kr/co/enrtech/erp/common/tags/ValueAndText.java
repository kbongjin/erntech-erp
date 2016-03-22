
package kr.co.enrtech.erp.common.tags;

/**
 * <pre>
 * value=text item 을 처리하기위한 dto, SelectTag 에서 사용됨.
 * 기타 json 을 만들때도 사용할수 있을것임..
 * </pre>
 * 
 * @author 권봉진
 */
public class ValueAndText {

    private String value;
    private String text;
    
    public ValueAndText() {
        // TODO Auto-generated constructor stub
    }
    
    public ValueAndText(String value, String text) {
    	this.value = value;
    	this.text = text;
    }

    public String getValue() {
        return value;
    }
    public void setValue(String value) {
        this.value = value;
    }
    public String getText() {
        return text;
    }
    public void setText(String text) {
        this.text = text;
    }
}
