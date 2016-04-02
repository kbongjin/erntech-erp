

/**
 * jQuery Custom 플러그인 정의
 */

(function($) {
	
    $.onModalSubmit = function(modalSelector, url, callback) {
    	
    	var formEl = $(modalSelector).find('form');
    	
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
    };
}(jQuery));