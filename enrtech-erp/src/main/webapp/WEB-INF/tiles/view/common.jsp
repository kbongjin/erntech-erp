<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Modal -->
	<div class="modal fade" id="regContract" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="cnstrct modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">계약 등록</h4>
				</div>
				<div class="modal-body">
				
					<!-- form -->
					<form class="form-horizontal">
						<div class="form-group">
							<label for="cnstrctNm" class="control-label col-sm-2">공사명</label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctNm" name="cnstrctNm" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label for="inputIssueType" class="control-label col-sm-2">계약 유형</label>
							<div class="col-sm-3">
								<select name="contractType1" class="form-control">
								  <option>신선</option>
								  <option>보수</option>
								</select>
							</div>
							<div class="col-sm-3">
								<select name="contractType2" class="form-control">
								  <option>수의</option>
								  <option>입철</option>
								</select>
							</div>
							<div class="col-sm-3">
								<select name="contractType3" class="form-control">
								  <option>하도급</option>
								  <option>물품납품</option>
								  <option>관급</option>
								  <option>A/S</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="contractDt" class="control-label col-sm-2">계약일</label>
							<div class="col-sm-3">
								<div class='input-group date' id='contractDtPicker'>
				                    <input type='text' name="contractDt" class="form-control input-sm" required/>
				                    <span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </span>
				                </div>
			                </div>
							<label for="inputPJKey" class="control-label col-sm-2">공사범위</label>
							<div class="col-sm-3">
								<select name="contractType3" class="form-control">
								  <option>납품/설치</option>
								  <option>납품</option>
								  <option>설치</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ownCmpnyId" class="control-label col-sm-2">발주처</label>
							<div class="col-sm-6">
								<input type="text" name="ownCmpnyId" class="form-control input-sm"
										id="ownCmpnyId" placeholder="summary" required />
							</div>
						</div>
						<div class="form-group">
							<label for="cnstrctCmpnyId" class="control-label col-sm-2">시공사</label>
							<div class="col-sm-6">
								<input type="text" name="cnstrctCmpnyId" class="form-control input-sm"
										id="cnstrctCmpnyId" placeholder="description">
							</div>
						</div>
						<div class="form-group">
							<label for="cnstrctStartDt" class="control-label col-sm-2">착공예정일</label>
							<div class="col-sm-2">
								<div class='input-group date' id='cnstrctStartDtPicker'>
				                    <input type='text' name="cnstrctStartDt" class="form-control input-sm" required/>
				                    <span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </span>
				                </div>
			                </div>
							<label for="cnstrctEndDt" class="control-label col-sm-2">준공예정일</label>
							<div class="col-sm-2">
								<div class='input-group date' id='cnstrctEndDtPicker'>
				                    <input type='text' name="cnstrctEndDt" class="form-control input-sm" required/>
				                    <span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </span>
				                </div>
			                </div>
			                <label for="maintenance" class="control-label col-sm-2">하자보증기간</label>
							<div class="col-sm-2">
								<input type="text" id="maintenance" name="maintenance" class="form-control input-sm" required />
							</div>
						</div>
						
					</form>
	
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" id="btnCreate" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>