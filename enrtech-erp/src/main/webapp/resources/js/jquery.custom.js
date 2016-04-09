

/**
 * jQuery Custom 플러그인 정의
 */

(function($) {
	
	$.resetForm = function($form) {
		
		if ($form.length > 0) {
			$form[0].reset();
			
			$form.find('input, select').each(function(index, input){
				$(input).val('');
			});
		}
		
	};
	
	
	$.setFormVal = function(formSelector, valueObj) {
		
		$form = $(formSelector);
		
		$.each(valueObj, function(key, value){
			
    		$form.find('input[name="'+key+'"]').val(value);
    		$form.find('select[name="'+key+'"]').val(value);
		});
		
		//TODO radio, checkbox
	};
	
    $.onFormSubmit = function($form, url, callback) {
    	
    	$form.on('submit', function (e) {
    		
			e.preventDefault();
			
			if( $form.isValid() ) {
				
				var request = $.ajax({
	    			  method : "POST",
					  url: contextPath + url,
					  data: $form.serialize(),
					  dataType: "json"
	    	   });
	    		
	    		request.done(function( responseJson ) {
	    			
	    			if(callback){
	    				callback(responseJson);
	    			};
	    			
    			});
			}
    		
			return false;
    		
    	});
    };
    
    $.onModalSubmit = function(modalSelector, url, callback) {
    	
    	var $form = $(modalSelector).find('form');
    	$.onFormSubmit($form, url, function(resJson){
    		
    		if(callback){
				callback(resJson);
			};
    		
    		$(modalSelector).modal("hide");
    	});
    	
    	/*
    	formEl.on('submit', function (e) {
    		
			e.preventDefault();
			
			if( formEl.isValid() ) {
				
				var request = $.ajax({
	    			  method : "POST",
					  url: contextPath + url,
					  data: formEl.serialize(),
					  dataType: "json"
	    	   });
	    		
	    		request.done(function( responseJson ) {
	    			
	    			if(callback){
	    				callback(responseJson);
	    			};
	    			
		    		$(modalSelector).modal("hide");
	    			
    			});
			}
    		
			return false;
    		
    	});
    	*/
    };
}(jQuery));