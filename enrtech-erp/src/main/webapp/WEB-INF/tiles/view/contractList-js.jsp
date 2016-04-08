<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
    	var searchField = 'cnstrct_nm';// default
    	
    	
	    $( document ).ready(function() {
	    	
	    	
	    	$('ul.navbar-nav > li.active').removeClass("active");
	    	$('#searchNav').addClass("active");
	    	
	    	$('#listTbl').bootstrapTable({
	    	    url: contextPath + '/contract/list',
	    	    ajaxOptions: {method: 'POST'},
	    	    onLoadSuccess: function(data) {
	    	    	$('#listTbl tr > td:nth-child(2) > a').ellipsis();
	    	    }
	    	});
	    	
	    	
	    	$('ul.search a').click(function(e){
	    		$('button.ddown').find('[data-bind="label"]' ).text($(this).text());
	    		searchField = $(this).attr('data-field');
	    	})
	    	
	    	$('button.search').click(function(e){
	    		
	    		$('#listTbl').bootstrapTable('refresh', { query :{
	    			"searchField" : searchField,
	    			"search" : $("input[name=search]").val()
	    		}});
	    	});
	    	
	    	$('button.refresh').click(function(e){
	    	
	    		$('#listTbl').bootstrapTable('refresh');
	    	});
	    	
	    });
    </script>