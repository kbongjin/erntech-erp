<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
	    $( document ).ready(function() {
	    	
	    	
	    	$('#regContract').on('hidden.bs.modal', function (e) {
	    		$( "#regContract form" )[0].reset();
	    	});
	    	
			$( "#btnCreate" ).click(function( event ) {
				
				window.location.href = "${pageContext.request.contextPath}/contract/11";
	    		
	    		/*
	    		var request = $.ajax({
	    			  method : "POST",
					  url: "jira/rest/api/2/issue",
					  data: $( "form" ).serialize(),
					  dataType: "json"
	    		});
	    		
	    		request.done(function( responseJson ) {
    			    //alert(responseJson);
	    			//alert( "Request failed: " + textStatus );
    			    $('#success-alert').toggleClass('in');
	    		
		    		setTimeout(function() {
		    			$('#success-alert').toggleClass('in');
		    			
		    	    }, 4000);
		    		$("#myModal").modal("hide");
	    			
    			});
	    		
	    		request.fail(function( jqXHR, textStatus ) {
    				
    			    alert( "Request failed: " + textStatus );
    			});
	    		
	    		*/
	    		
	    	});
			
			$( "#contractDtPicker" ).datetimepicker({
				format: 'YYYY-MM-DD'
			});
			$( "#cnstrctStartDtPicker" ).datetimepicker({
				format: 'YYYY-MM-DD'
			});
			$( "#cnstrctEndDtPicker" ).datetimepicker({
				format: 'YYYY-MM-DD'
			});
	    	
	    	
	    });
    </script>
      