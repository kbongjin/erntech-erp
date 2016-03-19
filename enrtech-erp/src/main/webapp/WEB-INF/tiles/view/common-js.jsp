<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
	    $( document ).ready(function() {
	    	
	    	
	    	$('#regContract').on('hidden.bs.modal', function (e) {
	    		// 등록창 닫을때 데이타 reset.
	    		$( "#regContract form" )[0].reset();
	    		
	    	});
	    	
			$( "#btnCreate" ).click(function( event ) {
				
				//window.location.href = "${pageContext.request.contextPath}/contract/main/11";
	    		
	    		
	    		var request = $.ajax({
	    			  method : "POST",
					  url: "contract/create",
					  data: $( "form" ).serialize(),
					  dataType: "json"
	    		});
	    		
	    		request.done(function( responseJson ) {
    			    //alert(responseJson);
	    			//alert( "Request failed: " + textStatus );
    			    $('#success-alert').toggleClass('in');// show
	    		
		    		setTimeout(function() {
		    			$('#success-alert').toggleClass('in');// hide
		    			window.location.href = "${pageContext.request.contextPath}/contract/main/" + responseJson.data;
		    	    }, 2000);
		    		$("#regContract").modal("hide");
		    		
		    		
	    			
    			});
	    		
	    		request.fail(function( jqXHR, textStatus ) {
    				
    			    alert( "Request failed: " + textStatus );
    			});
	    		
	    		
	    		
	    	});
			
			$( ".date-picker" ).datepicker({
				dateFormat: 'yy-mm-dd'
			});

	    });
    </script>
      