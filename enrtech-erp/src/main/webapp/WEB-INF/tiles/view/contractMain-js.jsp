<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
	    $( document ).ready(function() {

	    	showLoading('div.cmain form:first',{ message: '<img src="${res}/css/images/busy.gif" /> loading...' }); 
	    	var request = $.ajax({
	  			  method : "GET",
					  url: "${pageContext.request.contextPath}/contract/${contractId}",
					  dataType: "json"
	  		});
	  		
	  		
	  		request.done(function( responseJson ) {
			    //alert(responseJson);
							    
			  	$("div.cmain form:first").loadJSON(responseJson);
			
			});
	    	
			$('#ctap a').click(function (e) {
				e.preventDefault();
				$(this).tab('show');
			});
	    	
	    });
    </script>