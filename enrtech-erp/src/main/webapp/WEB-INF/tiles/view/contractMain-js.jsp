<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <script>
    
    	function initForm(data) {
    		$("div.cmain form.cform").loadJSON(data);
		  	
		  	$("div.cmain form.cform select").each(function( index, item ) {
    			//alert(JSON.stringify(item));
    			//alert($( this ).attr('name'));
    			if (data[$( this ).attr('name')]) {
    				$( this ).val(data[$( this ).attr('name')]);
    			}
    		});
    	}
	    $( document ).ready(function() {

	    	showLoading('div.cmain',{ message: '<img src="${res}/css/images/busy.gif" /> loading...' }); 
	    	var request = $.ajax({
	  			  method : "GET",
					  url: "${pageContext.request.contextPath}/contract/${contractId}",
					  dataType: "json"
	  		});
	  		
	  		var cformData;
	  		request.done(function( responseJson ) {
			    //alert(responseJson);
				
			    cformData = responseJson;
			    initForm(cformData);
			
			});
	    	
			$('#ctap a').click(function (e) {
				e.preventDefault();
				$(this).tab('show');
			});
			
			var disEL = $(':disabled');
			$('button.modify').click(function (e) {
				disEL.attr("disabled", false);
			});
			$('button.cancel').click(function (e) {
				disEL.attr("disabled", true);
				$('div.cmain form.cform').each(function(){
					this.reset();
				});
				initForm(cformData);
			});
			
			$('div.cmain form.cform2').on('submit', function (e) {
	    		
				e.preventDefault();
				
				if( $('div.cmain form.cform1').isValid() ) {
					
				   var request = $.ajax({
		    			  method : "POST",
						  url: "${pageContext.request.contextPath}/contract/update",
						  data: $( "form.cform" ).serialize(),
						  dataType: "json"
		    	   });
		    		
		    	   request.done(function( responseJson ) {
		    		   
	    		   });
		    		
				}
	    		
	    		return false;
	    		
	    	});
			
			$(".cdel").confirm({
			    confirm: function(button) {
			    	
			    	var request = $.ajax({
		    			  method : "POST",
						  url: "${pageContext.request.contextPath}/contract/delete",
						  data: {contractId : cformData.contractId},
						  dataType: "json"
		    	   });
		    		
		    	   request.done(function( responseJson ) {
		    		    setTimeout(function() {
			    			window.location.href = "${pageContext.request.contextPath}/dashboard";
			    	    }, 1000);
	    		   });
			    }
			});
			
			$('button.reg-bal').click(function (e) {
				var selections = $("table.cdetail").bootstrapTable('getSelections');
				
				if(selections.length == 0) {
					$.growl.notice({ message: "등록할 품목을 선택해주세요." });
					return;
				}
				
		    	//alert('getSelections: ' + JSON.stringify(selections));
		    	$('#regBal').modal('show');
		    });
			
			$('table.ballist').on('load-success.bs.table', function (e, data) {
				$('table.ballist').editableTableWidget();
			});
			
			
	    	
	    });
    </script>