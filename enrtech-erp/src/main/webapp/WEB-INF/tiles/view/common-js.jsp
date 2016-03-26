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
	    	
	    	$('#regContract').on('shown.bs.modal', function (e) {
	    		
	    		$("#cnstrctNm").focus();
	    		
	    	});
	    	
			
	    	
	    	$('#regContract form').on('submit', function (e) {
	    		
				e.preventDefault();
				
				if( $('#regContract form').isValid() ) {
					
					var request = $.ajax({
		    			  method : "POST",
						  url: "${pageContext.request.contextPath}/contract/create",
						  data: $( "#regContract form" ).serialize(),
						  dataType: "json"
		    	   });
		    		
		    		request.done(function( responseJson ) {
	    			    //alert(responseJson);
		    			//alert( "Request failed: " + textStatus );
		    			
			    		setTimeout(function() {
			    			window.location.href = "${pageContext.request.contextPath}/contract/main/" + responseJson.data;
			    	    }, 1000);
			    		$("#regContract").modal("hide");
		    			
	    			});
				}
	    		
				return false;
	    		
	    	});
	    	
			
	    	$.validate({
	    		validateOnBlur : false,
	    		errorMessagePosition : 'top',
	    		language : {
	    	        errorTitle: '입력 오류!',
	    	        requiredFields: '필수 입력항목이 누락되었습니다. 모든 필수항목(붉은색)을 입력해주세요.'
	    		}
	    	});
			$( ".date-picker" ).datepicker({
				dateFormat: 'yy-mm-dd'
			});
			
			$(document).ajaxStop(hideLoading);
			
			$( document ).ajaxSuccess(function( event, xhr, settings ) {
			  if ( settings.url.lastIndexOf('create') > -1 || settings.url.lastIndexOf('update') > -1) {
				  $.growl.notice({ message: "저장 완료!" });
			  } else if ( settings.url.lastIndexOf('delete') > -1 ) {
				  $.growl.notice({ message: "삭제 완료!" });
			  }
			});
			
			$( document ).ajaxError(function( event, jqxhr, settings, thrownError ) {
			    //alert( "Error : " + thrownError + " of " + settings.url );
				$.growl.error({ message: "Error : " + thrownError + " of " + settings.url });
			});
						
			$.confirm.options = {
			    text: "삭제 하시겠습니까?",
			    title: '',
			    confirmButton: "Yes",
			    cancelButton: "Cancel",
			    post: false,
			    confirmButtonClass: "btn-warning btn-sm",
			    cancelButtonClass: "btn-default btn-sm",
			    dialogClass: "modal-dialog modal-sm"
			}

	    });
    </script>
      