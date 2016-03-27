
package kr.co.enrtech.erp.common.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.converter.ConverterFactory;
import org.springframework.util.NumberUtils;

/**
 * <pre>
 *  화면(view)에서 전달된 number 값이 없을때(''일때) 0으로 변환해서 처리하도록함. 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
public class StringToNumberConverterFactory implements ConverterFactory<String, Number> {

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public StringToNumberConverterFactory() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public <T extends Number> Converter<String, T> getConverter(Class<T> targetType) {
		// TODO Auto-generated method stub
		return new StringToNumber<T>(targetType);
	}
	
	private final class StringToNumber<T extends Number> implements Converter<String, T> {

		private final Class<T> targetType;

		public StringToNumber(Class<T> targetType) {
			this.targetType = targetType;
		}

		public T convert(String source) {
			if (source == null  || source.length() == 0) {
				source = "0";
			}
			return NumberUtils.parseNumber(source, this.targetType);
		}
	}

}
//end of StringToNumberConverterFactory.java