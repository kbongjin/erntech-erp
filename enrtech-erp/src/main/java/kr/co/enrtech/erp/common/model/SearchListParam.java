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
public class SearchListParam {
	
	private int page;
	private int offset;
	private int limit = 100;
	private String searchField;//검색 field
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

	public String getSearchField() {
		return searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

	public void setExParams(Map<String, Object> exParams) {
		this.exParams = exParams;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
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