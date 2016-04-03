<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
	    $( document ).ready(function() {
	    	
	    	var $table = $('#custTbl');
	    	
	    	$table.bootstrapTable({
	    	    url: contextPath + '/admin/cust/list',
	    	    onClickCell: function(field, value, row, $element) {
	    	    	if(field === 'csCode') {
	    	    		
	    	    		
	    	    		
	    	    	} 
	    	    }
	    	});
	    	
	    	$('#regCust').on('shown.bs.modal', function (e) {
	    		
	    		var csTypeCd = $('#csTypeCd').val();
	    		alert(csTypeCd);
	    		$(this).find("input[name='csTypeCd']").val(csTypeCd);
	    		
	    	});
	    	
	    	
	    	$.onModalSubmit("#regCust", "/admin/cust/create", function(resJson){
	    		$table.bootstrapTable('refresh');
	    	});
	    	
	    });
	    
	    function codeNameLink(value, row, index){
    		return '<a href="#" >' + value + '</a>';
    	}
	    function removeFormatter(value, row, index) {
	    	return '<a class="remove" href="#" title="Remove" ><i class="glyphicon glyphicon-trash text-danger"></i></a>';
	    }
	    
    </script>