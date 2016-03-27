package kr.co.enrtech.erp;

import kr.co.enrtech.erp.common.converter.StringToNumberConverterFactory;

import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * 
 * @author BongJin Kwon
 * 
 */
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addFormatters(FormatterRegistry registry) {
		
		// 'yyyy-MM-dd' format string to Date converting.
		registry.addFormatter(new DateFormatter("yyyy-MM-dd"));
		
		registry.removeConvertible(String.class, Number.class);
		registry.addConverterFactory(new StringToNumberConverterFactory());
	}

}
