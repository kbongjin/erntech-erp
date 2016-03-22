
package kr.co.enrtech.erp.common.util;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Map;

import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.util.StringUtils;

import freemarker.cache.ClassTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * <p>
 * 템플릿 엔진(FreeMarker)을 사용하는 유틸리티 클래스
 * </p>
 * 
 * @author 권봉진
 */
public abstract class TemplateUtils {
	
	private static final String DEFAULT_ENCODING = "UTF-8";

	/**
	 * <pre>
	 * 주어진 템플릿을 클래스 경로로부터 로딩하여 OutputStream으로 결과를 출력합니다.
	 * 
	 * 템플릿 생성 중 오류가 발생할 경우, RuntimeException이 발생합니다.
	 * 
	 * 클래스 경로는 '/'로 구분하며, 맨 앞이 '/'로 시작하면 절대 경로로 인식하고,
	 * 그 외의 경우에는 상대경로로 인식하여 주어진 loaderClass의 위치로부터 로딩하게 됩니다.
	 * 상대경로일 경우, loaderClass가 없으면 IllegalArgumentException이 발생합니다.
	 * 
	 * 예) 절대경로의 클래스 경로로부터 생성
	 * TemplateUtils.generate("/sds/cloud/web/tags/template", null, model, out);
	 * 
	 * 예) 상대경로의 클래스 경로로부터 생성
	 * TemplateUtils.generate("template", CodeTag.class, model, out);
	 * </pre>
	 * 
	 * @param templatePath 클래스 경로 상의 템플릿 경로
	 * @param loaderClass 템플릿을 로딩할 클래스
	 * @param model 모델 데이터가 포함된 Map
	 * @param out 출력할 OutputStream
	 */
	public static void generate(String templatePath, Class loaderClass, Map model, OutputStream out) {
		try {
			generate(templatePath, loaderClass, model, new OutputStreamWriter(out));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}//end try catch
	}//end of generate()
	
	/**
	 * 주어진 템플릿을 클래스 경로로부터 로딩하여 Writer로 결과를 출력합니다.
	 * 
	 * @param templatePath 클래스 경로 상의 템플릿 경로
	 * @param loaderClass 템플릿을 로딩할 클래스
	 * @param model 모델 데이터가 포함된 Map
	 * @param out 출력할 Writer
	 */
	public static void generate(String templatePath, Class loaderClass, Map model, Writer out) {
		if (!StringUtils.hasText(templatePath)) {
			throw new IllegalArgumentException("템플릿의 클래스 경로가 필요합니다. - " + templatePath);
		}//end if
		if (model == null) {
			throw new IllegalArgumentException("템플릿을 생성하기 위해서는 모델이 필요합니다.");
		}//end if
		if (out == null) {
			throw new IllegalArgumentException("템플릿을 생성할 스트림이 필요합니다.");
		}//end if
		final String PATH = "/";
		try {
			Configuration cfg = new Configuration();
			cfg.setDefaultEncoding(DEFAULT_ENCODING);
			Class lc = null;
			if (templatePath.startsWith(PATH)) {
				lc = loaderClass == null ? TemplateUtils.class : loaderClass;
			} else {
				if (loaderClass == null) {
					throw new IllegalArgumentException("템플릿의 클래스 경로가 상대경로일 경우에는 loaderClass가 필요합니다.");
				} else {
					lc = loaderClass;
				}//end if else
			}//end if else
			int idx = templatePath.lastIndexOf(PATH);
			String prefix = templatePath.substring(0, idx);
			String templateFile = templatePath.substring(idx + 1);
			cfg.setTemplateLoader(new ClassTemplateLoader(lc, prefix));
			/*
			 * FreeMarker에서는 숫자의 경우, 기본적으로 3자리 단위마다 ','를 넣어서 포맷팅하므로,
			 * 이를 막기 위해서는 아래와 같이 NumberFormat을 변경해야 한다. 
			 * 
			 */
			cfg.setNumberFormat("0.######");
			Template template = cfg.getTemplate(templateFile);
			template.process(model, out);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}//end try catch
	}//end of generate()
	
	/**
	 * <pre>
	 * 주어진 템플릿을 적용한 결과 문자열을 반한한다.
	 * </pre>
	 * 
	 * @param templatePath 클래스 경로 상의 템플릿 경로
	 * @param loaderClass 템플릿을 로딩할 클래스
	 * @param model 모델 데이터가 포함된 Map
	 * @return
	 */
	public static String generate(String templatePath, Class loaderClass, Map model) {
        if (!StringUtils.hasText(templatePath)) {
            throw new IllegalArgumentException("템플릿의 클래스 경로가 필요합니다. - " + templatePath);
        }//end if
        if (model == null) {
            throw new IllegalArgumentException("템플릿을 생성하기 위해서는 모델이 필요합니다.");
        }//end if
        
        final String PATH = "/";
        try {
            Configuration cfg = new Configuration();
            cfg.setDefaultEncoding(DEFAULT_ENCODING);
            Class lc = null;
            if (templatePath.startsWith(PATH)) {
                lc = loaderClass == null ? TemplateUtils.class : loaderClass;
            } else {
                if (loaderClass == null) {
                    throw new IllegalArgumentException("템플릿의 클래스 경로가 상대경로일 경우에는 loaderClass가 필요합니다.");
                } else {
                    lc = loaderClass;
                }//end if else
            }//end if else
            int idx = templatePath.lastIndexOf(PATH);
            String prefix = templatePath.substring(0, idx);
            String templateFile = templatePath.substring(idx + 1);
            cfg.setTemplateLoader(new ClassTemplateLoader(lc, prefix));
            /*
             * FreeMarker에서는 숫자의 경우, 기본적으로 3자리 단위마다 ','를 넣어서 포맷팅하므로,
             * 이를 막기 위해서는 아래와 같이 NumberFormat을 변경해야 한다. 
             * 
             */
            cfg.setNumberFormat("0.######");
            Template template = cfg.getTemplate(templateFile);
            
            StringWriter out = new StringWriter();
            
            template.process(model, out);
            return out.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }//end try catch
    }//end of generate()
	
	/**
	 * 
	 * <pre>
	 * 주어진 템플릿을 적용한 결과 문자열을 반환한다.
	 * </pre>
	 *
	 * @param cfg
	 * @param templateFileNm
	 * @param model
	 * @return
	 */
	public static String generate(Configuration cfg, String templateFileNm, Map model){
		String text = "";
		try{
			Template template = cfg.getTemplate(templateFileNm);
			text = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);
			
		}catch (Exception e) {
			throw new RuntimeException(e);
		}
		return text;
	}
	
	/*
	public static void main(String[] args) {
        Map model = new HashMap();
        model.put("imgSrc", "ㄴㅇㄹㄴㄹㄴ");
        
        System.out.println(TemplateUtils.generate("template/ImgTag.start.ftl", ImgTag.class, model));
    }
    */
	
}//end of TemplateManager.java