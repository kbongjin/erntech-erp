<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">계약 상세</h1>
        </div>
    </div>
    
	<div class="cmain">
	
		<div class="panel panel-default" style="width: 900px;">
  			<div class="panel-body">
	    	<form class="form-horizontal">
		    	<div class="form-group">
					<label for="cnstrctNm" class="control-label col-sm-2">공사명 :</label>
					<div class="col-sm-9">
						<p class="form-control-static cnstrctNm"></p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputIssueType" class="control-label col-sm-2">계약 유형 :</label>
					<div class="col-sm-9">
						<p class="form-control-static"><span class="contractType1"></span>, <span class="contractType2"></span>, <span class="contractType3"></span></p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">발주처 :</label>
					<div class="col-sm-4">
						<p class="form-control-static ownCmpnyId"></p>
					</div>
					<label class="control-label col-sm-2">시공사 :</label>
					<div class="col-sm-4">
						<p class="form-control-static cnstrctCmpnyId"></p>
					</div>
				</div>
				<div class="form-group">
					<label for="cnstrctStartDt" class="control-label col-sm-2">착공예정일 :</label>
					<div class="col-sm-2">
						<p class="form-control-static cnstrctStartDt"></p>
	                </div>
					<label for="cnstrctEndDt" class="control-label col-sm-2">준공예정일 :</label>
					<div class="col-sm-2">
						<p class="form-control-static cnstrctEndDt"></p>
	                </div>
	                <label for="maintenance" class="control-label col-sm-2">하자보증기간 :</label>
					<div class="col-sm-2">
						<p class="form-control-static maintenance"></p>
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
	    	<form class="form-horizontal">
		    	
				<div class="form-group">
					<label class="control-label col-sm-2">현장주소 :</label>
					<div class="col-sm-9">
						<p class="form-control-static">(121-050) 서울시 마포구 마포동 222</p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"></label>
					<div class="col-sm-9">
						<p class="form-control-static">주소222</p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 연락처 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">031) 123-1234</p>
					</div>
					<label class="control-label col-sm-3">현장 공무담당자 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">홍공무</p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">현장 공사담당자 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">홍현장</p>
					</div>
					<label class="control-label col-sm-3">담당부서 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">담당부서11</p>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">영업 담당자 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">홍영업</p>
					</div>
					<label class="control-label col-sm-3">공사담당자 :</label>
					<div class="col-sm-3">
						<p class="form-control-static">홍공사</p>
					</div>
				</div>
			</form>
			<button type="button" class="btn btn-primary btn-sm">수정</button>
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
	
