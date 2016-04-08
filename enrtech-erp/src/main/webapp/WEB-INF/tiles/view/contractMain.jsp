<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
	<div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">수주 상세</h3>
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
					<div class="col-sm-3">
						<t:code group_id="C_TYPE1" name="contractType1" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
					<div class="col-sm-3">
						<t:code group_id="C_TYPE2" name="contractType2" styleClass="form-control input-sm" firstOption="::선택하세요::" />
					</div>
					<div class="col-sm-3">
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
					<label class="control-label col-sm-2">발주처</label>
					<div class="col-sm-6">
						<input type="text" name="ownCmpnyId" class="form-control input-sm" >
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">시공사</label>
					<div class="col-sm-6">
						<input type="text" name="cnstrctCmpnyId" class="form-control input-sm" >
					</div>
				</div>
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
								<option>2</option>
								<option>1</option>
								<option>0</option>
							</select>
						</div>
						<div class="form-group">
							<span style="margin-right: 20px;"></span>
							<button type="button" class="btn btn-primary btn-sm cdetil-reg" data-toggle="modal" data-target="#regCondetail">내역등록</button>
							<button type="button" class="btn btn-default btn-sm" >삭제</button>
							<button type="button" class="btn btn-primary btn-sm" >발주서등록</button>
						</div>
					</form>
				</div>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th ><input type="checkbox" value="option1" aria-label="..."></th>
						<th width="4%">#</th>
						<th width="16%">품명</th>
						<th width="10%">규격</th>
						<th width="5%">단위</th>
						<th width="5%">수량</th>
						<th width="8%">단가</th>
						<th width="8%">실행단가</th>
						<th width="8%">설치단가</th>
						<th width="8%">수주금액</th>
						<th width="8%">실행금액</th>
						<th width="8%">설치금액</th>
						<th width="8%">납기일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" value="option1" aria-label="..."></td>
						<td scope="row">1</td>
						<td>교량용 교좌장치(양방향고정)</td>
						<td>25ton(디스크받침)</td>
						<td>조</td>
						<td>8</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>2016-04-07</td>
					</tr>
					<tr>
						<td><input type="checkbox" value="option1" aria-label="..."></td>
						<td scope="row">2</td>
						<td>교량용 교좌장치(양방향고정)</td>
						<td>25ton(디스크받침)</td>
						<td>조</td>
						<td>8</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>2016-04-07</td>
					</tr>
					<tr>
						<td><input type="checkbox" value="option1" aria-label="..."></td>
						<td scope="row">3</td>
						<td>교량용 교좌장치(양방향고정)</td>
						<td>25ton(디스크받침)</td>
						<td>조</td>
						<td>8</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>410,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>3,280,000</td>
						<td>2016-04-07</td>
					</tr>
				</tbody>
			  </table>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="ctab3">...</div>
	    <div role="tabpanel" class="tab-pane" id="ctab4">...</div>
	  </div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="regCondetail" tabindex="-1" role="dialog" aria-labelledby="cdetailLabel">
		<div class="cnstrct modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="cdetailLabel">계약 내역 등록</h4>
				</div>
				<div class="modal-body">
				
					<form class="form-horizontal">

						<div class="form-group">
							<label class="control-label col-sm-2">품명코드</label>
							<div class="col-sm-4">
								<input type="text" id="productCd" name="productCd" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">규격코드</label>
							<div class="col-sm-4">
								<input type="text" id="standardCd" name="standardCd" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">단위</label>
							<div class="col-sm-4">
								<input type="text" id="unit" name="unit" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">수량</label>
							<div class="col-sm-4">
								<input type="text" id="qty" name="qty" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">단가</label>
							<div class="col-sm-4">
								<input type="text" id="unitPrice" name="unitPrice" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">계약금액</label>
							<div class="col-sm-4">
								<input type="text" id="price" name="price" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">생산공장</label>
							<div class="col-sm-4">
								<input type="text" id="factory" name="factory" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">실행수량(자재)</label>
							<div class="col-sm-4">
								<input type="text" id="excJaQty" name="excJaQty" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">실행단가(자재)</label>
							<div class="col-sm-4">
								<input type="text" id="excJaUprice" name="excJaUprice" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">실행금액(자재)</label>
							<div class="col-sm-4">
								<input type="text" id="excJaPrice" name="excJaPrice" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">실행수량(설치)</label>
							<div class="col-sm-4">
								<input type="text" id="excSlQty" name="excSlQty" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">실행단가(설치)</label>
							<div class="col-sm-4">
								<input type="text" id="excSlUprice" name="excSlUprice" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">실행금액(설치)</label>
							<div class="col-sm-4">
								<input type="text" id="excSlPrice" name="excSlPrice" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-2">납품일자</label>
							<div class="col-sm-4">
								<input type="text" id="deliveryDt" name="deliveryDt" class="form-control input-sm" required />
							</div>
						</div>
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