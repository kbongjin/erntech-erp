<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">코드 관리</h3>
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
									<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#regCodeGRP">추가하기</button>
								</div>
							</div>
                        	
                            <div class="table-responsive">
                                <table id="grpTbl" class="table table-striped" data-side-pagination="server" >
                                    <thead>
                                        <tr>
                                            <th data-formatter="indexFormatter">#</th>
                                            <th data-field="gropId" >그룹코드</th>
                                            <th data-field="codeNm" data-formatter="nameLink2">코드 그룹명</th>
                                            <th data-field="desc" >Description</th>
                                            <th data-field="edit" data-formatter="editFormatter" width="5%"> </th>
                                            <th data-field="gropId" data-formatter="removeFormatter" width="5%"> </th>
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
                        		<input type="hidden" name="gropId" value="" />
                        		<input type="hidden" name="handle" value="insert" />
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
										<button type="submit" class="btn btn-default btn-sm">저장하기</button>
									</div>
								</div>
							</form>
                            <div class="table-responsive">
                                <table id="codeTbl" class="table table-striped" data-side-pagination="server">
                                    <thead>
                                        <tr>
                                            <th data-field="code">코드</th>
                                            <th data-field="codeNm" data-formatter="nameLink2">코드명</th>
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
	<!-- Modal -->
	<div class="modal fade" id="regCodeGRP" tabindex="-1" role="dialog" aria-labelledby="codeLabel">
		<div class="modal-dialog modal-default" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="codeLabel">코드 그룹 등록</h4>
				</div>
				<div class="modal-body">
					<!-- contents -->
					<form class="form-horizontal narrow2">
						<input type="hidden" name="code" value="GRP" />
						<input type="hidden" name="mngYn" value="Y" />
						<input type="hidden" name="handle" value="insert" />
						<div class="form-group">
							<label class="control-label col-sm-2">그룹코드</label>
							<div class="col-sm-4">
								<input type="text" name="gropId" class="form-control input-sm" data-validation="required" />
							</div>
							<label class="control-label col-sm-2">코드 그룹명</label>
							<div class="col-sm-4">
								<input type="text" name="codeNm" class="form-control input-sm" data-validation="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Description</label>
							<div class="col-sm-10">
								<input type="text" name="desc" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary create">등록하기</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
					</form>
	
				</div>
				
			</div>
		</div>
	</div>