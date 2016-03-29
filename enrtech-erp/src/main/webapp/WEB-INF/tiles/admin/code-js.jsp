<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
	    $( document ).ready(function() {
	    	
	    	$('#grpTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'code':'GRP'});
	    	    },
	    	    onLoadSuccess: function(data) {
	    	    	
	    	    	$('#grpTbl a').click(function(e){
	    	    		
	    	    		var gropId = $(this).attr('grop-id');
	    	    		$('#gropId').val(gropId);
	    	    		
	    	    		$('#codeTbl').bootstrapTable('refresh', {query: {
	    	    			'gropId' : gropId 
	    		    	}});
	    	    	});
	    	    	
	    	    }
	    	});
	    	
	    	$('#codeTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'gropId' : '###' });
	    	    }
	    	});
	    	
	    });
	    
	    function codeNameLink(value, row, index){
    		return '<a href="#" grop-id="'+ row.gropId +'">' + value + '</a>';
    	}
	    function removeFormatter(value, row, index) {
	    	return '<a class="remove" href="javascript:void(0)" title="Remove"><i class="glyphicon glyphicon-trash text-danger"></i></a>';
	    }
    </script>