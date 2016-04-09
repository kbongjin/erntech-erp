<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
	    $( document ).ready(function() {
	    	
	    	var selectedGropId = null;
	    	var clickRow = null;
	    	
	    	$('#grpTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'code':'GRP'});
	    	    },
	    	    onClickCell: function(field, value, row, $element) {
	    	    	if(field === 'codeNm') {
	    	    		
	    	    		selectedGropId = row.gropId;
	    	    		$('#codeTbl').bootstrapTable('refresh', {query: {
	    	    			'gropId' : row.gropId 
	    		    	}});
	    	    		
	    	    	} else if($element.find('a.remove').length > 0) {
	    	    		
	    	    		$.confirm({
		    			    confirm: function(button) {
		    			    	
		    			    	var request = $.ajax({
		    		    			  method : "POST",
		    						  url: contextPath + "/admin/code/delete",
		    						  data: row,
		    						  dataType: "json"
		    		    	   });
		    		    		
		    		    	   request.done(function( responseJson ) {
		    		    		   $('#grpTbl').bootstrapTable('refresh');
		    		    		   $('#codeTbl').bootstrapTable('refresh', {query: {
		    			    			'gropId' : '###'
		    				    	}});
		    	    		   });
		    			    }
		    			});
	    	    	} else if($element.find('a.edit').length > 0) {
	    	    		
	    	    		clickRow = row;
	    	    		$('#regCodeGRP').modal('show');
	    	    	}
	    	    }
	    	});
	    	
	    		
	    	$('#codeTbl').bootstrapTable({
	    	    url: contextPath + '/admin/code/list',
	    	    queryParams: function(params) {
	    	    	return $.extend(params, {'gropId' : '###' });
	    	    },
	    	    onClickCell: function(field, value, row, $element) {
	    	    	//alert(JSON.stringify($element.html()));
	    	    	if(field === 'codeNm') {
	    	    		
	    	    		//$("#cdForm").loadJSON(row);// has a bug.
	    	    		$.setFormVal("#cdForm", $.extend(row, {handle:'update'}));
	    	    		$("#cdForm input[name='code']").attr('readOnly', true);
	    	    		
	    	    	} else if($element.find('a.remove').length > 0) {
	    	    		
	    	    		$.confirm({
		    			    confirm: function(button) {
		    			    	
		    			    	var request = $.ajax({
		    		    			  method : "POST",
		    						  url: contextPath + "/admin/code/delete",
		    						  data: row,
		    						  dataType: "json"
		    		    	   });
		    		    		
		    		    	   request.done(function( responseJson ) {
		    		    		   $('#codeTbl').bootstrapTable('refresh', {query: {
		    			    			'gropId' : selectedGropId 
		    				    	}});
		    	    		   });
		    			    }
		    			});
	    	    	}
	    	    },
	    	    onLoadSuccess: function(data) {
	    	    	
	    	    	$.setFormVal("#cdForm", {gropId:selectedGropId,code:'',codeNm:'', desc:'', handle:'insert'});
	    	    	$("#cdForm input[name='code']").attr('readOnly', false);
	    	    }
	    	});
	    	
	    	//hidden.bs.modal event 는 common-js.jsp 에서 처리.
			$('#regCodeGRP').on('shown.bs.modal', function (e) {
	    		
	    		if(clickRow) {
	    			$.setFormVal("#regCodeGRP form", $.extend(clickRow, {handle:'update'}));
	    			clickRow = null;
	    		} else {
	    			$.setFormVal("#regCodeGRP form", {id:'', csCode:'', handle:'insert'});
	    		}
	    	});
	    	
	    	$.onModalSubmit("#regCodeGRP", "/admin/code/save", function(resJson){
	    		$('#grpTbl').bootstrapTable('refresh');
	    	});
	    	
	    	$.onFormSubmit($("#cdForm"), "/admin/code/save", function(resJson){
	    		$('#codeTbl').bootstrapTable('refresh', {query: {
	    			'gropId' : selectedGropId 
		    	}});
	    	});
	    	
	    	
	    });
	    
    </script>