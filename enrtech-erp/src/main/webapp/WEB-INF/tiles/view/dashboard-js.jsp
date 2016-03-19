<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
	    $( document ).ready(function() {
	    	
	    	
	    	$('ul.navbar-nav > li.active').removeClass("active");
	    	$('#dashNav').addClass("active");
	    	
	    	var start_num = 1;
	    	
	    	var request = $.ajax({
	  			  method : "GET",
					  url: "contract/list",
					  data: {start: (start_num-1), limit:20},
					  dataType: "json"
	  		});
	  		
	  		
	  		request.done(function( responseJson ) {
			    //alert(responseJson);
							    
			  	$.each(responseJson.list, function( index, item ) {
			  		
			  		var nmLink = '<a href="contract/main/'+ item.contractId +'">' + item.cnstrctNm + '</a>';
			  		
			  		$('#ingTbl > tbody:last').append('<tr><th>' + (index+start_num) + '</th><td>' + nmLink + '</td><td>' + item.ownCmpnyId + '</td><td>' + item.cnstrctCmpnyId + '</td><td>' + item.contractDt + '</td><td> </td><td> </td></tr>');
				});
			
			});
			 
			request.fail(function( jqXHR, textStatus ) {
				
			    alert( "Request failed: " + textStatus );
			});
	    	
	    });
    </script>