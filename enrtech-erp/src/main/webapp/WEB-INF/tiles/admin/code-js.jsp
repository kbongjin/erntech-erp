<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
	    $( document ).ready(function() {
	    	
	    	var selectedId = null;
	    	
	    	$('#grpTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'code':'GRP'});
	    	    },
	    	    onLoadSuccess: function(data) {
	    	    	
	    	    	$('#grpTbl a.link').click(function(e){
	    	    		
	    	    		var gropId = $(this).attr('grop-id');
	    	    		selectedId = gropId;
	    	    		
	    	    		$('#gropId').val(gropId);
	    	    		
	    	    		$('#codeTbl').bootstrapTable('refresh', {query: {
	    	    			'gropId' : gropId 
	    		    	}});
	    	    	});
	    	    	
	    	    	$("#grpTbl a.remove1").confirm({
	    			    confirm: function(button) {
	    			    	
	    			    	var request = $.ajax({
	    		    			  method : "POST",
	    						  url: contextPath + "/admin/code/delete",
	    						  data: {gropId : button.attr('data-value')},
	    						  dataType: "json"
	    		    	   });
	    		    		
	    		    	   request.done(function( responseJson ) {
	    		    		   $('#grpTbl').bootstrapTable('refresh');
	    	    		   });
	    			    }
	    			});
	    	    	
	    	    }
	    	});
	    	
	    	$('#codeTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'gropId' : '###' });
	    	    },
	    	    onClickCell: function(field, value, row, $element) {
	    	    	//alert(JSON.stringify(row));
	    	    	$("#cdForm").loadJSON(row);
	    	    },
	    	    onLoadSuccess: function(data) {
	    	    	
	    	    	
	    	    	$("#codeTbl a.remove2").confirm({
	    			    confirm: function(button) {
	    			    	
	    			    	var request = $.ajax({
	    		    			  method : "POST",
	    						  url: contextPath + "/admin/code/delete",
	    						  data: {gropId : selectedId, code : button.attr('data-value')},
	    						  dataType: "json"
	    		    	   });
	    		    		
	    		    	   request.done(function( responseJson ) {
	    		    		   $('#codeTbl').bootstrapTable('refresh');
	    	    		   });
	    			    }
	    			});
	    	    }
	    	});
	    	
	    	$.onModalSubmit("#regCodeGRP", "/admin/code/create", function(resJson){
	    		$('#grpTbl').bootstrapTable('refresh');
	    	});
	    	
	    	
	    });
	    
	    function codeNameLink(value, row, index){
    		return '<a class="link" href="#" grop-id="'+ row.gropId +'">' + value + '</a>';
    	}
	    function removeFormatter1(value, row, index) {
	    	return '<a class="remove1" href="#" title="Remove" data-value="'+value+'"><i class="glyphicon glyphicon-trash text-danger"></i></a>';
	    }
	    function removeFormatter2(value, row, index) {
	    	return '<a class="edit" href="#" title="Edit" ><i class="fa fa-pencil-square-o"></i></a>' +
	    	       ' <a class="remove2" href="#" title="Remove" data-value="'+value+'"><i class="glyphicon glyphicon-trash text-danger"></i></a>' ;
	    }
    </script>