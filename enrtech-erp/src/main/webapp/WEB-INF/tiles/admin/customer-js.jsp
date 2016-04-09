<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
	    $( document ).ready(function() {
	    	
	    	var $table = $('#custTbl');
			var clickRow = null;
			
	    	$table.bootstrapTable({
	    	    url: contextPath + '/admin/cust/list',
	    	    onClickCell: function(field, value, row, $element) {
	    	    	
					if(field === 'csNm') {
	    	    		
						clickRow = row;
						$('#regCust').modal('show');
						
	    	    		
	    	    	} else if($element.find('a.remove').length > 0) {
	    	    		
	    	    		$.confirm({
		    			    confirm: function(button) {
		    			    	
		    			    	var request = $.ajax({
		    		    			  method : "POST",
		    						  url: contextPath + "/admin/cust/delete",
		    						  data: row,
		    						  dataType: "json"
		    		    	   });
		    		    		
		    		    	   request.done(function( responseJson ) {
		    		    		   $table.bootstrapTable('refresh');
		    		    		   
		    	    		   });
		    			    }
		    			});
	    	    	}
	    	    }
	    	});
	    	
	    	$('#regCust').on('shown.bs.modal', function (e) {
	    		
	    		if(clickRow) {
	    			$.setFormVal("#regCust form", clickRow);
	    			clickRow = null;
	    			
	    		} else {
	    			var csTypeCd = $('#csTypeCd').val();
		    		$(this).find("select[name='csTypeCd']").val(csTypeCd);
	    		}
	    		
	    	});
	    	
	    	/*
	    	$('#regCust').on('hidden.bs.modal', function (e) {
	    		// 등록창 닫을때 데이타 reset.
	    		$(this).find( "form" )[0].reset();
	    		if(clickRow) {
	    			clickRow = null;
	    		}
	    	});
	    	*/
	    	
	    	$.onModalSubmit("#regCust", "/admin/cust/save", function(resJson){
	    		$table.bootstrapTable('refresh');
	    	});
	    	
	    });
	    
    </script>