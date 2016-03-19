package kr.co.enrtech.erp.common.model;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.type.Alias;

/**
 * <pre>
 *  Search request parameter Model
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Alias("SearchListParam")
public class SearchListParam {
	
	private int page;
	private int start;
	private int limit;
	private String search;//검색어
	private Map<String, Object> exParams = new HashMap<String, Object>();

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public SearchListParam() {
		// TODO Auto-generated constructor stub
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	public void addExParam(String key, Object val){
		this.exParams.put(key, val);
	}

	public Map<String, Object> getExParams() {
		return exParams;
	}
	

}
//end of ExtjsGridParam.java