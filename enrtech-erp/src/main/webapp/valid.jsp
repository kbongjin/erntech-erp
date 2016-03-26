<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
<%
	request.setAttribute("res", request.getContextPath() + "/resources") ;
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="BongjinKwon">

    <title>ERP :: ENRTech</title>

    <!-- Bootstrap Core CSS -->
    <link href="${res}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${res}/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${res}/dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${res}/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="${res}/css/jquery-ui.min.css" rel="stylesheet">
    <link href="${res}/css/default.css" rel="stylesheet">
    <link href="${res}/css/sticky-footer.css" rel="stylesheet">
    <link href="${res}/css/jquery.growl.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${res}/bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${res}/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<h2>Hello World!</h2>
<!-- form -->
					<form class="form-horizontal">
						<div class="form-group">
							<label for="cnstrctNm" class="control-label col-sm-2">공사명</label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctNm" name="cnstrctNm" class="form-control input-sm" data-validation="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="inputIssueType" class="control-label col-sm-2">계약 유형</label>
							<div class="col-sm-3">
								<t:code group_id="C_TYPE1" name="contractType1" styleClass="form-control" firstOption="::선택하세요::"/>
							</div>
							<div class="col-sm-3">
								<t:code group_id="C_TYPE2" name="contractType2" styleClass="form-control" firstOption="::선택하세요::"/>
							</div>
							<div class="col-sm-3">
								<t:code group_id="C_TYPE3" name="contractType3" styleClass="form-control" firstOption="::선택하세요::"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">계약일</label>
							<div class="col-sm-3">
								<div class='input-group'>
				                    <input type='text' id="contractDt" name="contractDt" class="date-picker form-control input-sm" data-validation="required"/>
				                    <label for="contractDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
							<label class="control-label col-sm-2">공사범위</label>
							<div class="col-sm-3">
								<t:code group_id="C_WAY" name="cnstrctWay" styleClass="form-control" firstOption="::선택하세요::"/>
							</div>
						</div>
						<div class="form-group">
							<label for="ownCmpnyId" class="control-label col-sm-2">발주처</label>
							<div class="col-sm-6">
								<input type="text" name="ownCmpnyId" class="form-control input-sm"
										id="ownCmpnyId" placeholder="summary" />
							</div>
						</div>
						<div class="form-group">
							<label for="cnstrctCmpnyId" class="control-label col-sm-2">시공사</label>
							<div class="col-sm-6">
								<input type="text" name="cnstrctCmpnyId" class="form-control input-sm"
										id="cnstrctCmpnyId" placeholder="description">
							</div>
						</div>
						<div class="form-group control-group">
							<label class="control-label col-sm-2">착공예정일</label>
							<div class="col-sm-2 controls">
								<div class='input-group'>
				                    <input type='text' id="cnstrctStartDt" name="cnstrctStartDt" class="date-picker form-control input-sm" >
				                    <label for="cnstrctStartDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
							<label class="control-label col-sm-2">준공예정일</label>
							<div class="col-sm-2">
								<div class='input-group'>
				                    <input type='text' id="cnstrctEndDt" name="cnstrctEndDt" class="date-picker form-control input-sm" >
				                    <label for="cnstrctEndDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
			                <label for="maintenance" class="control-label col-sm-2">하자보증기간</label>
							<div class="col-sm-2">
								<input type="text" id="maintenance" name="maintenance" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장주소</label>
							<div class="col-sm-9 row">
								<div class="col-sm-2">
									<input type="text" id="postNum1" name="postNum1" class="form-control input-sm" placeholder="우편번호1" />
								</div>
								<div class="col-sm-2">
									<input type="text" id="postNum2" name="postNum2" class="form-control input-sm" placeholder="우편번호2" />
								</div>
								<button type="button" class="btn btn-primary btn-sm">우편번호 선택</button>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctAddr1" name="cnstrctAddr1" class="form-control input-sm" placeholder="주소1" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctAddr2" name="cnstrctAddr2" class="form-control input-sm" placeholder="주소2" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장 연락처</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctPhone" name="cnstrctPhone" class="form-control input-sm" />
							</div>
							<label class="control-label col-sm-3">현장 공무담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctPubMnger" name="cnstrctPubMnger" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장 공사담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctRelMnger" name="cnstrctRelMnger" class="form-control input-sm" />
							</div>
							<label class="control-label col-sm-3">담당부서</label>
							<div class="col-sm-3">
								<input type="text" id="mngTeam" name="mngTeam" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">영업 담당자</label>
							<div class="col-sm-3">
								<input type="text" id="salesMnger" name="salesMnger" class="form-control input-sm" />
							</div>
							<label class="control-label col-sm-3">공사담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctMnger" name="cnstrctMnger" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<button type="submit" id="btnCreate" class="btn btn-primary">등록하기</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</form>

<!-- jQuery -->
    <script src="${res}/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${res}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${res}/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript
    <script src="${res}/bower_components/raphael/raphael-min.js"></script>
    <script src="${res}/bower_components/morrisjs/morris.min.js"></script>
    <script src="${res}/js/morris-data.js"></script>
	 -->
	<script src="${res}/js/jquery.form-validator.min.js"></script>
	
    <!-- SB Admin Theme JavaScript -->
    <script src="${res}/dist/js/sb-admin-2.js"></script>
    <script src="${res}/js/jquery-ui.min.js"></script>
    <script src="${res}/js/jquery.blockUI.js"></script>
    <script src="${res}/js/jquery.growl.js"></script>
    <script src="${res}/js/jquery.loadJSON.js"></script>
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
	    	
	    	/*
			$( "#btnCreate" ).click(function( event ) {
				
				$('#regContract form').submit();
				if($('#regContract form').validator('validate')){
					
					var request = $.ajax({
		    			  method : "POST",
						  url: "contract/create",
						  data: $( "#regContract form" ).serialize(),
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
		    		
				}
	    		
	    	});
	    	*/
			
	    	$.validate({
	    		errorMessagePosition : 'top',
	    		showHelpOnFocus : false,
	    		addSuggestions : false
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
      
</body>
</html>
