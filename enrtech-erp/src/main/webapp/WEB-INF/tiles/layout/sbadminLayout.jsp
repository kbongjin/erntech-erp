<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
    <link href="${res}/css/bootstrap-table.css" rel="stylesheet" >
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
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/dashboard">ERP :: ENRTech</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
            	<li id="dashNav"><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#regContract">계약등록</button></li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> 홍길동 <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#" class="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <tiles:insertAttribute name="left-menu" />
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
        
        	<div id="container">
	            <!-- main -->
				<tiles:insertAttribute name="common" />
	      		<tiles:insertAttribute name="body" />
	            <!-- /main -->
            </div>
        </div>
        <!-- /#page-wrapper -->
        
        <footer class="footer">
	      <div class="container">
	        <p class="text-muted"> footer content</p>
	      </div>
	    </footer>

    </div>
    <!-- /#wrapper -->

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
    <script src="${res}/js/json2.js"></script>
    <script src="${res}/js/jquery.confirm.min.js"></script>
    <script src="${res}/js/bootstrap-table.min.js"></script>
	<script src="${res}/js/bootstrap-table-ko-KR.js"></script>
    
    <!-- Our JavaScript -->
	<tiles:insertAttribute name="common-js" />
    <tiles:insertAttribute name="body-js" />
</body>

</html>
