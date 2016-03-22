
package kr.co.enrtech.erp.common.util;

import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.MessageSource;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.support.RequestContextUtils;

/**
 * <pre>
 * Spring MVC 관련 유틸 함수 모음. 
 * </pre>
 * 
 * @author 권봉진
 */
public class SpringMvcUtil {

    public SpringMvcUtil() {
        // TODO Auto-generated constructor stub
    }
    
    /**
     * <pre>
     * Bean Name 으로 bean 객체 얻기.
     * </pre>
     * @param beanName
     * @param servletContext
     * @return
     */
    public static Object getBean(String beanName, ServletContext servletContext){
        return WebApplicationContextUtils.getWebApplicationContext(servletContext).getBean(beanName);
    }
    
    /**
     * <pre>
     * Class Type 으로 bean 객체 얻기.
     * </pre>
     * @param <T>
     * @param requiredType
     * @param servletContext
     * @return
     */
    public static <T> T getBean(Class<T> requiredType, ServletContext servletContext){
        return WebApplicationContextUtils.getWebApplicationContext(servletContext).getBean(requiredType);
    }
    
    /**
     * <pre>
     * 사용자의 Locale 을 가져온다.
     * </pre>
     * @param request
     * @return
     */
    public static Locale getLocale(HttpServletRequest request){
        return RequestContextUtils.getLocale(request);
    }
    
    /**
     * <pre>
     * TimeZoneResolver 반환.
     * </pre>
     * @param request
     * @return
     
    public static TimeZoneResolver getTimeZoneResolver(HttpServletRequest request){
        return (TimeZoneResolver)request.getAttribute(SpringDispatcherServlet.TIMEZONE_RESOLVER_ATTRIBUTE);
    }
    */
    /**
     * <pre>
     * 사용자 TimeZone 가져오기. 없으면 Default TimeZone 을 반환.
     * </pre>
     * @param request
     * @return
     
    public static TimeZone getTimeZone(HttpServletRequest request){
        TimeZoneResolver tzResolver = getTimeZoneResolver(request);
        if(tzResolver != null){
            return tzResolver.resolveTimeZone(request);
        }
        return TimeZoneResolver.getDefaultTimeZone();
    }
    */
    /**
     * <pre>
     * 메시지 가져오기.
     * </pre>
     * @param messageSource
     * @param code
     * @param args
     * @param request 로케일정보를 가져오기 위해 필요.
     * @return
     */
    public static String getMessage(MessageSource messageSource, String code, Object[] args, HttpServletRequest request){
        return messageSource.getMessage(code, args, getLocale(request));
    }

}
