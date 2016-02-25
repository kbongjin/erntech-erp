/**
 * 
 */
package kr.co.enrtech.erp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

/**
 * @author Administrator
 *
 */
@Configuration
@ComponentScan
@EnableAutoConfiguration
public class ErpApplication {

	public static void main(String[] args) throws Exception {
        SpringApplication.run(ErpApplication.class, args);
    }
	
}
