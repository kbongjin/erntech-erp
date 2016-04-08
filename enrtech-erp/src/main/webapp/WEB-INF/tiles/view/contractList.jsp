<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h3 class="page-header">계약 관리</h3>
	</div>
</div>


<div class="row">
	<div class="col-lg-6">
		<div class="input-group">
			<div class="input-group-btn">
				<button type="button" class="btn btn-default dropdown-toggle ddown"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span data-bind="label">계약명</span>&nbsp;<span class="caret"></span>
				</button>
				<ul class="dropdown-menu search">
					<li><a href="#" data-field="cnstrct_nm">계약명</a></li>
					<li><a href="#" data-field="sales_mnger">영업담당자</a></li>
					<li><a href="#" data-field="own_cmpny_id">발주처</a></li>
				</ul>
			</div>
			<!-- /btn-group -->
			<input type="text" name="search" class="form-control"> 
			<span class="input-group-btn">
				<button class="btn btn-default search" type="button">
					<i class="fa fa-search"></i>
				</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>
	<!-- /.col-lg-6 -->
	<!-- <button type="button" class="btn btn-default search">검색</button>  -->
	<button class="btn btn-default refresh" type="button" title="새로 고침">
		<i class="glyphicon glyphicon-refresh icon-refresh"></i>
	</button>
</div>
<!-- /.row -->
<p></p>

<!-- Table -->
<table id="listTbl" class="table table-striped"
	data-content-type="application/x-www-form-urlencoded; charset=UTF-8"
	data-pagination="true" data-side-pagination="server">
	<!-- <caption>현재 진행중인 계약 목록입니다.</caption> -->
	<thead>
		<tr>
			<th data-width="10%" data-formatter="indexFormatter">#</th>
			<th data-field="cnstrctNm" data-width="20%" data-formatter="nameLink">공사명</th>
			<th data-field="ownCmpnyId" data-width="15%">발주처</th>
			<th data-field="cnstrctCmpnyId" data-width="15%">시공사</th>
			<th data-field="contractDt" data-width="10%">계약일</th>
			<th data-field="stateNm" data-width="15%">계약금액(만원)</th>
			<th data-field="stateNm" data-width="15%">계약상태</th>
		</tr>
	</thead>

</table>
<!-- 
	<nav>
	  <ul class="pagination">
	    <li>
	      <a href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <li class="active"><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">3</a></li>
	    <li><a href="#">4</a></li>
	    <li><a href="#">5</a></li>
	    <li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav> -->
