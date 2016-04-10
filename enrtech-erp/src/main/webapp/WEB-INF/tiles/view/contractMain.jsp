<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
	<div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">수주 상세 <small>(수주201604-0099)</small></h3>
        </div>
    </div>
    
	<div class="cmain">
	
		<div class="panel panel-default" style="width: 900px;">
  			<div class="panel-body">
	    	<form class="form-horizontal cform cform1" >
	    		<fieldset disabled>
	    		<input type="hidden" name="contractId" value="" />
	    		<input type="hidden" name="state" value="" />
	    		<div class="form-group">
					<label class="control-label col-sm-2">발주처</label>
					<div class="col-sm-6">
						<div class="input-group input-group-sm">
							<input type="text" name="ownCmpnyId" class="form-control input-sm" >
							<label class="input-group-addon btn" data-toggle="modal" data-target="#selectCS">선택 </label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">시공사1(원도급)</label>
					<div class="col-sm-3">
						<div class="input-group input-group-sm">
							<input type="text" name="cnstrctCmpnyId" class="form-control input-sm" >
							<label class="input-group-addon btn" data-toggle="modal" data-target="#selectCS">선택 </label>
						</div>
					</div>
					<label class="control-label col-sm-2">시공사2(하도급)</label>
					<div class="col-sm-3">
						<div class="input-group input-group-sm">
							<input type="text" name="cnstrctCmpnyId2" class="form-control input-sm" >
							<label class="input-group-addon btn" data-toggle="modal" data-target="#selectCS">선택 </label>
						</div>
					</div>
				</div>
		    	<div class="form-group">
					<label class="control-label col-sm-2">공사명</label>
					<div class="col-sm-6">
						<input type="text" name="cnstrctNm" class="form-control input-sm" data-validation="required"  />
					</div>
					<label class="control-label col-sm-1">상태</label>
					
					<div class="col-sm-2">
						<p class="form-control-static stateNm"></p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">계약 유형</label>
					<div class="col-sm-2">
						<t:code group_id="C_TYPE1" name="contractType1" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
					<div class="col-sm-2">
						<t:code group_id="C_TYPE2" name="contractType2" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
					<div class="col-sm-2">
						<t:code group_id="C_TYPE3" name="contractType3" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">계약일</label>
					<div class="col-sm-3">
						<div class='input-group'>
		                    <input type='text' id="contractDt2" name="contractDt" class="date-picker form-control input-sm"  />
		                    <label for="contractDt2" class="input-group-addon btn">
		                        <span class="glyphicon glyphicon-calendar"></span>
		                    </label>
		                </div>
	                </div>
					<label class="control-label col-sm-2">공사범위</label>
					<div class="col-sm-3">
						<t:code group_id="C_WAY" name="cnstrctWay" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">계약금액</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-2">
								<input type="text" name="a" class="form-control input-sm" disabled />
							</div>
							<label class="control-label col-sm-1">실행금액</label>
							<div class="col-sm-2">
								<input type="text" name="b" class="form-control input-sm" disabled />
							</div>
							<label class="control-label col-sm-1">실행률</label>
							<div class="col-sm-2">
								<input type="text" name="c" class="form-control input-sm" disabled />
							</div>
							<label class="control-label col-sm-1">영업수수료</label>
							<div class="col-sm-2">
								<input type="text" name="d" class="form-control input-sm" disabled />
							</div>
						</div>
					</div>
				</div>
				</fieldset>
			</form>
			</div>
			</div>
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist" id="ctap">
	    <li role="presentation" class="active"><a href="#ctab1" aria-controls="ctab1" role="tab" data-toggle="tab">수주 기본정보</a></li>
	    <li role="presentation"><a href="#ctab2" aria-controls="ctab2" role="tab" data-toggle="tab">수주 상세내역</a></li>
	    <li role="presentation"><a href="#ctab3" aria-controls="ctab3" role="tab" data-toggle="tab">발주서</a></li>
	    <li role="presentation"><a href="#ctab4" aria-controls="ctab4" role="tab" data-toggle="tab">출고증</a></li>
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="ctab1">
	    	<div class="panel panel-default" style="width: 900px;">
  			<div class="panel-body">
	    	<form class="form-horizontal cform cform2">
	    		<fieldset disabled>
		    	
				<div class="form-group">
					<label class="control-label col-sm-2">착공예정일</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-3">
								<div class='input-group'>
				                    <input type='text' id="cnstrctStartDt2" name="cnstrctStartDt" class="date-picker form-control input-sm" >
				                    <label for="cnstrctStartDt2" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
							<label class="control-label col-sm-2">준공예정일</label>
							<div class="col-sm-3">
								<div class='input-group'>
				                    <input type='text' id="cnstrctEndDt2" name="cnstrctEndDt" class="date-picker form-control input-sm" >
				                    <label for="cnstrctEndDt2" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
			                <label class="control-label col-sm-2">하자보증기간</label>
							<div class="col-sm-2">
								<input type="text" name="maintenance" class="form-control input-sm" value="준공후 **개월"  />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장주소</label>
					<div class="col-sm-9">
						<input type="text" name="cnstrctAddr1" class="form-control input-sm"  />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"></label>
					<div class="col-sm-9">
						<input type="text" name="cnstrctAddr2" class="form-control input-sm"  />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 연락처</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctPhone" class="form-control input-sm"  />
					</div>
					<label class="control-label col-sm-3">현장 공무담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctPubMnger" class="form-control input-sm"  />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 공사담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctRelMnger" class="form-control input-sm"  />
					</div>
					<label class="control-label col-sm-3">담당부서</label>
					<div class="col-sm-3">
						<input type="text" name="mngTeam" class="form-control input-sm"  />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">영업 담당자</label>
					<div class="col-sm-3">
						<input type="text" name="salesMnger" class="form-control input-sm"  />
					</div>
					<label class="control-label col-sm-3">공사담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctMnger" class="form-control input-sm"  />
					</div>
				</div>
				<div class="form-group">
				    <label class="control-label col-sm-2">파일 첨부</label>
				    <div class="col-sm-3">
				    	<input type="file" name="file" >
				    </div>
				</div>
				</fieldset>
				<div class="form-group">
					<div class="col-sm-2">
						
					</div>
					<div class="col-sm-9">
						<button type="button" class="btn btn-primary btn-sm modify">수정</button>
						<button type="submit" class="btn btn-primary btn-sm save" disabled >저장</button>
						<button type="button" class="btn btn-default btn-sm cancel" disabled >취소</button>
						<button type="submit" class="btn btn-primary btn-sm cdel" disabled >삭제</button>
					</div>
				</div>
				
			</form>
			</div>
			</div>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="ctab2">
	    	<div class="row">
    			<div class="col-md-9">
			    	<!-- Table -->
			    	<form class="form-inline bar" >
						<div class="form-group">
							<label class="control-label">차수:</label>
							<select class="form-control input-sm">
								<option>3</option>
								<option>2</option>
								<option>1</option>
							</select>
						</div>
						<div class="form-group">
							<span style="margin-right: 20px;"></span>
							<button type="button" class="btn btn-primary btn-sm cdetil-reg" data-toggle="modal" data-target="#regCondetail">내역등록</button>
							<button type="button" class="btn btn-default btn-sm" >삭제</button>
							<span style="margin-right: 30px;"></span>
							<button type="button" class="btn btn-primary btn-sm reg-bal" >발주서등록</button>
						</div>
					</form>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table table-striped cdetail" data-toggle="table" 
						data-url="${res}/cdetails.json"
						data-click-to-select="true">
					<thead>
						<tr>
							<th data-field="state" data-checkbox="true"></th>
							<th data-field="index" data-width="4%">#</th>
							<th data-field="a1" data-width="16%">품명</th>
							<th data-field="a2" data-width="10%">규격</th>
							<th data-field="a3" data-width="5%">단위</th>
							<th data-field="a4" data-width="5%">수량</th>
							<th data-field="a5" data-width="8%">단가</th>
							<th data-field="a6" data-width="8%">실행단가</th>
							<th data-field="a7" data-width="8%">설치단가</th>
							<th data-field="a8" data-width="8%">수주금액</th>
							<th data-field="a9" data-width="8%">실행금액</th>
							<th data-field="a10" data-width="8%">설치금액</th>
							<th data-field="a11" data-width="8%">납기일자</th>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				  </table>
			 </div>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="ctab3">...</div>
	    <div role="tabpanel" class="tab-pane" id="ctab4">...</div>
	  </div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="regCondetail" tabindex="-1" role="dialog" aria-labelledby="cdetailLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="cdetailLabel">수주 내역 등록</h4>
				</div>
				<div class="modal-body">
				
					<form class="form-horizontal narrow3">
						<fieldset class="well scheduler-border">
    						<legend class="scheduler-border">수주내역</legend>
							<div class="form-group">
								<label class="control-label col-sm-2">품명</label>
								<div class="col-sm-8">
									<div class="input-group input-group-sm">
										<input type="text" name="productCd" class="form-control input-sm" >
										<label class="input-group-addon btn" >선택 </label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">규격</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-2">
											<select name="standardCd" class="form-control input-sm" data-validation="required" >
												<option>300*4</option>
												<option>300*5</option>
												<option>300*6</option>
											</select>
										</div>
										<label class="control-label col-sm-1">단위</label>
										<div class="col-sm-2">
											<select name="unit" class="form-control input-sm" data-validation="required" >
												<option>M</option>
												<option>EA</option>
												<option>M2</option>
												<option>M3</option>
											</select>
										</div>
										<label class="control-label col-sm-1">수량</label>
										<div class="col-sm-2">
											<input type="text" name="qty" class="form-control input-sm" data-validation="required" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">단가</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-2">
											<input type="text" name="unitPrice" class="form-control input-sm" required />
										</div>
										<label class="control-label col-sm-1">수주금액</label>
										<div class="col-sm-2">
											<input type="text" name="price" class="form-control input-sm" disabled />
										</div>
										<label class="control-label col-sm-1">설치단가</label>
										<div class="col-sm-2">
											<input type="text" name="excSlQty" class="form-control input-sm" required />
										</div>
										<label class="control-label col-sm-1">설치금액</label>
										<div class="col-sm-2">
											<input type="text" name="excSlUprice" class="form-control input-sm" disabled />
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">합계단가</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-2">
											<input type="text" name="unitPrice" class="form-control input-sm" disabled />
										</div>
										<label class="control-label col-sm-1">합계금액</label>
										<div class="col-sm-2">
											<input type="text" name="price" class="form-control input-sm" disabled />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<fieldset class="well scheduler-border">
    						<legend class="scheduler-border">실행내역</legend>
							<div class="form-group">
								<label class="control-label col-sm-2">생산공장</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-5">
											<select name="factory" class="form-control input-sm" data-validation="required" >
												<option>[CS30001]ADC공장</option>
												<option>[CS30002]BBB공장</option>
												<option>[CS30003]CCC공장</option>
											</select>
										</div>
										<label class="control-label col-sm-1">단가</label>
										<div class="col-sm-2">
											<input type="text" name="excSlQty" class="form-control input-sm" required />
										</div>
										<label class="control-label col-sm-1">금액</label>
										<div class="col-sm-2">
											<input type="text" name="excSlUprice" class="form-control input-sm" disabled/>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">시공팀</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-5">
											<input type="text" name="sigteam" class="form-control input-sm" />
										</div>
										<label class="control-label col-sm-1">단가</label>
										<div class="col-sm-2">
											<input type="text" name="excSlQty" class="form-control input-sm" />
										</div>
										<label class="control-label col-sm-1">금액</label>
										<div class="col-sm-2">
											<input type="text" name="excSlUprice" class="form-control input-sm" disabled/>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">합계단가</label>
								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-2">
											<input type="text" name="unitPrice" class="form-control input-sm" disabled />
										</div>
										<label class="control-label col-sm-1">합계금액</label>
										<div class="col-sm-2">
											<input type="text" name="price" class="form-control input-sm" disabled />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<div class="form-group">
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">등록하기</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
					</form>
	
				</div>
				
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="regBal" tabindex="-1" role="dialog" aria-labelledby="balLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-lg">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="balLabel">발주서 등록</h4>
				</div>
				<div class="modal-body">
					<!-- contents -->
					<form class="form-horizontal narrow3">
						<div class="form-group">
							<label class="control-label col-sm-2">생산공장</label>
							<div class="col-sm-4">
								<select name="factory" class="form-control input-sm" data-validation="required" >
									<option>[CS30001]ADC공장</option>
									<option>[CS30002]BBB공장</option>
									<option>[CS30003]CCC공장</option>
								</select>
							</div>
							<label class="control-label col-sm-1">시공팀</label>
							<div class="col-sm-5">
								<input type="text" name="sigteam" class="form-control input-sm" />
							</div>
						</div>
						<div class="form-group">
                            <label class="control-label col-sm-2">특기사항</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="3"></textarea>
							</div>
                        </div>
					</form>
					<div class="table-responsive">
						<table class="table table-striped ballist" data-toggle="table" 
								data-url="${res}/cdetails.json"
								data-click-to-select="true">
							<caption>발주내역</caption>
							<thead>
								<tr>
									<th data-field="index" >#</th>
									<th data-field="a1" >품명</th>
									<th data-field="a2" >규격</th>
									<th data-field="a3" >단위</th>
									<th data-field="a4" >수량</th>
									<th data-field="a5" >자재단가</th>
									<th data-field="a11" >납기일자</th>
									<th data-field="a12" >비고</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						 </table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">등록하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>