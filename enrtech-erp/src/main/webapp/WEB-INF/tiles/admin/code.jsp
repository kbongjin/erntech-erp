<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">코드 관리</h1>
        </div>
    </div>
	<div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading">
							코드 그룹
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-8">
									<div class="input-group custom-search-form">
		                                <input type="text" class="form-control" placeholder="그룹명">
		                                <span class="input-group-btn">
			                                <button class="btn btn-default" type="button">
			                                    <i class="fa fa-search"></i>
			                                </button>
			                            </span>
		                            </div>
								</div>
								<div class="col-md-4">
									<button type="button" class="btn btn-default btn-sm">등록하기</button>
								</div>
							</div>
                        	
                            <div class="table-responsive">
                                <table id="grpTbl" class="table table-striped" data-side-pagination="server" >
                                    <thead>
                                        <tr>
                                            <th data-formatter="indexFormatter">#</th>
                                            <th data-field="gropId" >그룹코드</th>
                                            <th data-field="codeNm" data-formatter="codeNameLink">코드 그룹명</th>
                                            <th data-field="desc" >Description</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-7">
                    <div class="panel panel-info">
                        <div class="panel-heading">
							코드 목록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form id="cdForm" class="form-horizontal">
                        		<input type="hidden" id="gropId" name="gropId" value="" />
								<div class="form-group">
									<div class="col-md-3">
										<input type="text" name="code" class="form-control input-sm" placeholder="코드" required />
									</div>
									<div class="col-md-3">
										<input type="text" name="codeNm" class="form-control input-sm" placeholder="코드명" required />
									</div>
									<div class="col-md-3">
										<input type="text" name="desc" class="form-control input-sm" placeholder="Description" />
									</div>
									<div class="col-md-3">
										<button type="submit" class="btn btn-default btn-sm">등록하기</button>
									</div>
								</div>
							</form>
                            <div class="table-responsive">
                                <table id="codeTbl" class="table table-striped" data-side-pagination="server">
                                    <thead>
                                        <tr>
                                            <th data-field="code">코드</th>
                                            <th data-field="codeNm">코드명</th>
                                            <th data-field="desc">Description</th>
                                            <th data-field="code" data-formatter="removeFormatter" width="10%">삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
