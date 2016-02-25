<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	<div class="row">
	  <div class="col-lg-6">
	    <div class="input-group">
	      <div class="input-group-btn">
	        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">계약명 <span class="caret"></span></button>
	        <ul class="dropdown-menu">
	          <li><a href="#">계약명</a></li>
	          <li><a href="#">Another action</a></li>
	          <li><a href="#">Something else here</a></li>
	          <li role="separator" class="divider"></li>
	          <li><a href="#">Separated link</a></li>
	        </ul>
	      </div><!-- /btn-group -->
	      <input type="text" class="form-control" aria-label="...">
	    </div><!-- /input-group -->
	  </div><!-- /.col-lg-6 -->
	  <button type="button" class="btn btn-default">검색</button>
	</div><!-- /.row -->
	<p></p>
	<div class="panel panel-primary">
	  <!-- Default panel contents -->
	  <div class="panel-heading">계약 목록</div>
	
	  <!-- Table -->
	  <table id="ingTbl" class="table">
		<caption>계약 목록입니다.</caption>
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
				<td>계약등록</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>공사명22</td>
				<td>발주처22</td>
				<td>시공사</td>
				<td>계약일</td>
				<td>3,000</td>
				<td>계약등록</td>
			</tr>
		</tbody>
	  </table>
	</div>
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
	</nav>
	