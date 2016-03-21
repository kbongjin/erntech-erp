<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    	var blockEls = [];
    	function showLoading(selector, opts) {
    		blockEls.push(selector);
    		
    		$.extend( opts, {css: { border: '1px solid rgb(170, 170, 170)' }, overlayCSS: { opacity: '0.4'}} );
    		$(selector).block(opts); 
    	}
    	
    	function hideLoading() {
    		$.each(blockEls, function( index, item ) {
    			$(item).unblock(); 
    		});
    	}
    	
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
    			    $('#fly-alert').toggleClass('in');// show
	    		
		    		setTimeout(function() {
		    			$('#fly-alert').toggleClass('in');// hide
		    			window.location.href = "${pageContext.request.contextPath}/contract/main/" + responseJson.data;
		    	    }, 3000);
		    		$("#regContract").modal("hide");
		    		
	    			
    			});
	    		
	    		
	    	});
			
			$( ".date-picker" ).datepicker({
				dateFormat: 'yy-mm-dd'
			});
			
			$(document).ajaxStop(hideLoading);
			
			$( document ).ajaxError(function( event, jqxhr, settings, thrownError ) {
			    //alert( "Error : " + thrownError + " of " + settings.url );
				$.growl.error({ message: "Error : " + thrownError + " of " + settings.url });
			});
			

	    });
    </script>
      