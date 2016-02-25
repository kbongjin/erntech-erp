/**
 * 
 */
package kr.co.enrtech.erp.contract;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author Bongjin Kwon
 *
 */
@Controller
@RequestMapping("/contract")
public class ContractController {
	
	
	private ObjectMapper om = new ObjectMapper();
	
	@RequestMapping(value = {"/{cntrId}"}, method=RequestMethod.GET)
    public String getContract(@PathVariable String cntrId) {
        return "page.contract";
    }
	
	@RequestMapping(value = {"/search"})
    public String search() {
		
		System.out.println("---------------------------------------------");
        return "page.contractList";
    }
	
	/*
	@RequestMapping("/jira/rest/api/2/issue")
    @ResponseBody
    public String create(@RequestParam("pkey") String pkey, @RequestParam("summary") String summary, @RequestParam("desc") String desc, @RequestParam("itype") String itype ) throws Exception {
		
		Issue issue = new Issue(pkey, summary, desc, itype);
		String json = om.writeValueAsString(issue);
		
		System.out.println(json);
		
		HttpUriRequest httpreq = RequestBuilder.post()
                .setUri(new URI(targetHost.toURI() +"/jira/rest/api/2/issue"))
                .setEntity(new StringEntity(json, "UTF-8"))
                //.addParameter("pkey", pkey)
                .build();
		
		return callAPI(httpreq);
	}

	@RequestMapping("/jira/rest/api/2/search")
    @ResponseBody
    public String search(@RequestParam("jql") String jql ) throws Exception {
		
		
		//Thread.sleep(5000);
        HttpUriRequest httpget = RequestBuilder.get()
                .setUri(new URI(targetHost.toURI() +"/jira/rest/api/2/search"))
                .addParameter("jql", jql)
                .build();

		
        return callAPI(httpget);
    }
	*/
	
}
