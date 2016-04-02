<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
	    $( document ).ready(function() {
	    	
	    	
	    	$('ul.navbar-nav > li.active').removeClass("active");
	    	$('#dashNav').addClass("active");
	    	
	    	
	    	$('#ingTbl').bootstrapTable({
	    	    url: 'contract/list',
	    	    ajaxOptions: {method: 'POST'},
	    	    onLoadSuccess: function(data) {
	    	    	$('#ingTbl tr > td:nth-child(2) > a').ellipsis();
	    	    }
	    	});
	    	
	    	
	    	/* 
	    	showLoading('#ingTbl',{ message: '<img src="${res}/css/images/busy.gif" /> loading...' }); 
	    	var request = $.ajax({
	  			  method : "POST",
					  url: "contract/list",
					  data: {offset: 0, limit:20},
					  dataType: "json"
	  		});
	  		
	  		
	  		request.done(function( responseJson ) {
			    //alert(responseJson);
							    
			  	$.each(responseJson.list, function( index, item ) {
			  		
			  		var nmLink = '<a href="contract/main/'+ item.contractId +'">' + item.cnstrctNm + '</a>';
			  		
			  		$('#ingTbl > tbody:last').append('<tr><th>' + (index+start_num) + '</th><td>' + nmLink + '</td><td>' + item.ownCmpnyId + '</td><td>' 
			  				+ item.cnstrctCmpnyId + '</td><td>' + item.contractDt + '</td><td> </td><td>' + item.stateNm + '</td></tr>');
				});
			
			});
	  		 */
	    	
	    });
    </script>