<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">계약 상세</h1>
        </div>
    </div>
    
	<div class="cmain">
	
		<div class="panel panel-default" style="width: 900px;">
  			<div class="panel-body">
	    	<form class="form-horizontal cform cform1" >
	    		<input type="hidden" name="contractId" value="" />
	    		<input type="hidden" name="state" value="" />
		    	<div class="form-group">
					<label class="control-label col-sm-2">공사명</label>
					<div class="col-sm-6">
						<input type="text" name="cnstrctNm" class="form-control input-sm" data-validation="required" disabled />
					</div>
					<label class="control-label col-sm-1">상태</label>
					
					<div class="col-sm-2">
						<p class="form-control-static stateNm"></p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">계약 유형</label>
					<div class="col-sm-3">
						<t:code group_id="C_TYPE1" name="contractType1" styleClass="form-control" firstOption="::선택하세요::" attr="disabled"/>
					</div>
					<div class="col-sm-3">
						<t:code group_id="C_TYPE2" name="contractType2" styleClass="form-control" firstOption="::선택하세요::" attr="disabled"/>
					</div>
					<div class="col-sm-3">
						<t:code group_id="C_TYPE3" name="contractType3" styleClass="form-control" firstOption="::선택하세요::" attr="disabled"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">계약일</label>
					<div class="col-sm-3">
						<div class='input-group'>
		                    <input type='text' id="contractDt2" name="contractDt" class="date-picker form-control input-sm" disabled />
		                    <label for="contractDt2" class="input-group-addon btn">
		                        <span class="glyphicon glyphicon-calendar"></span>
		                    </label>
		                </div>
	                </div>
					<label class="control-label col-sm-2">공사범위</label>
					<div class="col-sm-3">
						<t:code group_id="C_WAY" name="cnstrctWay" styleClass="form-control" firstOption="::선택하세요::" attr="disabled" />
					</div>
				</div>
				
			</form>
			</div>
			</div>
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist" id="ctap">
	    <li role="presentation" class="active"><a href="#ctab1" aria-controls="ctab1" role="tab" data-toggle="tab">계약기본정보</a></li>
	    <li role="presentation"><a href="#ctab2" aria-controls="ctab2" role="tab" data-toggle="tab">계약 상세 내역</a></li>
	    <li role="presentation"><a href="#ctab3" aria-controls="ctab3" role="tab" data-toggle="tab">발주서</a></li>
	    <li role="presentation"><a href="#ctab4" aria-controls="ctab4" role="tab" data-toggle="tab">출고증</a></li>
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="ctab1">
	    	<div class="panel panel-default" style="width: 900px;">
  			<div class="panel-body">
	    	<form class="form-horizontal cform cform2">
		    	<div class="form-group">
					<label class="control-label col-sm-2">발주처</label>
					<div class="col-sm-6">
						<input type="text" name="ownCmpnyId" class="form-control input-sm" disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">시공사</label>
					<div class="col-sm-6">
						<input type="text" name="cnstrctCmpnyId" class="form-control input-sm" disabled>
					</div>
				</div>
				<div class="form-group control-group">
					<label class="control-label col-sm-2">착공예정일</label>
					<div class="col-sm-2 controls">
						<div class='input-group'>
		                    <input type='text' id="cnstrctStartDt2" name="cnstrctStartDt" class="date-picker form-control input-sm" disabled>
		                    <label for="cnstrctStartDt2" class="input-group-addon btn">
		                        <span class="glyphicon glyphicon-calendar"></span>
		                    </label>
		                </div>
	                </div>
					<label class="control-label col-sm-2">준공예정일</label>
					<div class="col-sm-2">
						<div class='input-group'>
		                    <input type='text' id="cnstrctEndDt2" name="cnstrctEndDt" class="date-picker form-control input-sm" disabled>
		                    <label for="cnstrctEndDt2" class="input-group-addon btn">
		                        <span class="glyphicon glyphicon-calendar"></span>
		                    </label>
		                </div>
	                </div>
	                <label class="control-label col-sm-2">하자보증기간</label>
					<div class="col-sm-2">
						<input type="text" name="maintenance" class="form-control input-sm" value="준공후 **개월" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장주소</label>
					<div class="col-sm-9">
						<input type="text" name="cnstrctAddr1" class="form-control input-sm" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"></label>
					<div class="col-sm-9">
						<input type="text" name="cnstrctAddr2" class="form-control input-sm" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 연락처</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctPhone" class="form-control input-sm" disabled />
					</div>
					<label class="control-label col-sm-3">현장 공무담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctPubMnger" class="form-control input-sm" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 공사담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctRelMnger" class="form-control input-sm" disabled />
					</div>
					<label class="control-label col-sm-3">담당부서</label>
					<div class="col-sm-3">
						<input type="text" name="mngTeam" class="form-control input-sm" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">영업 담당자</label>
					<div class="col-sm-3">
						<input type="text" name="salesMnger" class="form-control input-sm" disabled />
					</div>
					<label class="control-label col-sm-3">공사담당자</label>
					<div class="col-sm-3">
						<input type="text" name="cnstrctMnger" class="form-control input-sm" disabled />
					</div>
				</div>
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
	    	<!-- Table -->
			  <table id="pendingTbl" class="table">
				<caption>결재 대기중인 계약 목록입니다.</caption>
				<thead>
					<tr>
						<th width="10%">#</th>
						<th width="20%">공사명</th>
						<th width="15%">발주처</th>
						<th width="15%">시공사</th>
						<th width="10%">계약일</th>
						<th width="15%">계약금액(만원)</th>
						<th width="15%">계약상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>공사명11</td>
						<td>발주처11</td>
						<td>시공사</td>
						<td>계약일</td>
						<td>1,000</td>
						<td>결재대기</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>공사명22</td>
						<td>발주처22</td>
						<td>시공사</td>
						<td>계약일</td>
						<td>2,000</td>
						<td>결재대기</td>
					</tr>
				</tbody>
			  </table>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="ctab3">...</div>
	    <div role="tabpanel" class="tab-pane" id="ctab4">...</div>
	  </div>
	</div>
	
