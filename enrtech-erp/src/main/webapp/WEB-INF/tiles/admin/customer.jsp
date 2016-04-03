<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">발주처/시공사 관리</h1>
        </div>
    </div>
    <div class="row">
    	<div class="col-md-9">
			<form class="form-horizontal bar" >
				<div class="form-group">
					<div class="col-md-3">
						<div class="row">
							<label class="control-label col-md-3">Type:</label>
							<div class="col-md-9">
								<t:code group_id="CUST_TYPE" name="csTypeCd" styleClass="form-control" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						  <div class="input-group custom-search-form">
			                  <input type="text" class="form-control" placeholder="발주처명">
			                  <span class="input-group-btn">
			                      <button class="btn btn-default" type="button">
			                          <i class="fa fa-search"></i>
			                      </button>
			                  </span>
			              </div>
					</div>
					<div class="col-md-3">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#regCust">추가하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="row">
        <div class="col-md-9">
              <div class="table-responsive">
                  <table id="custTbl" class="table table-striped" data-pagination="true" data-side-pagination="server" >
                      <thead>
                          <tr>
                              <th data-width="5%" data-formatter="indexFormatter">#</th>
                              <th data-field="csCode" data-width="12%">코드</th>
                              <th data-field="csNm" data-formatter="codeNameLink">발주처명</th>
                              <th data-field="addr1" >주소</th>
                              <th data-field="id" data-formatter="removeFormatter" data-width="8%">삭제</th>
                          </tr>
                      </thead>
                      <tbody>
                          
                      </tbody>
                  </table>
              </div>
              <!-- /.table-responsive -->
        </div>
    </div>
    <!-- Modal -->
	<div class="modal fade" id="regCust" tabindex="-1" role="dialog" aria-labelledby="custLabel">
		<div class="cnstrct modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="custLabel">발주처 등록</h4>
				</div>
				<div class="modal-body">
					<!-- contents -->
					<form class="form-horizontal narrow2">
						<input type="hidden" name="id" />
						<input type="hidden" name="csTypeCd" />
						<div class="form-group">
							<label class="control-label col-sm-2">발주처명</label>
							<div class="col-sm-10">
								<input type="text" id="csNm" name="csNm" class="form-control input-sm" data-validation="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">주소</label>
							<div class="col-sm-10">
								<input type="text" id="addr1" name="addr1" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">대표전화번호</label>
							<div class="col-sm-10">
								<input type="text" id="telNo" name="telNo" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">팩스번호</label>
							<div class="col-sm-10">
								<input type="text" id="faxNo" name="faxNo" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">팩스번호</label>
							<div class="col-sm-10">
								<input type="text" id="faxNo" name="faxNo" class="form-control input-sm" />
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