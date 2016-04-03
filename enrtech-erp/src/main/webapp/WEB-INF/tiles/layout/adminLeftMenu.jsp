<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    		<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="계약명">
                                <span class="input-group-btn">
	                                <button class="btn btn-default" type="button">
	                                    <i class="fa fa-search"></i>
	                                </button>
	                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/code/view"><i class="fa fa-table fa-fw"></i> 코드관리</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/cust/view"><i class="fa fa-building fa-fw"></i>발주처/시공사</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i>사용자관리</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
	
