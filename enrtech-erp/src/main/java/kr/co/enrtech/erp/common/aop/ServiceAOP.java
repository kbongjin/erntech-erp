
package kr.co.enrtech.erp.common.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * <pre>
 * 
 * </pre>
 * @author Bongjin Kwon
 * @version 1.0
 */
@Aspect
@Component
public class ServiceAOP {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ServiceAOP.class);

	@After("execution(* kr.co.enrtech.erp..*Controller.*(..))")
	public void logServiceAccess(JoinPoint joinPoint) {
		LOGGER.info("{} --------------------------------------------------", joinPoint.toShortString());
	}


}
//end of ServiceAOP.java