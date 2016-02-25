<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="panel panel-primary">
	  <!-- Default panel contents -->
	  <div class="panel-heading">진행중인 계약</div>
	
	  <!-- Table -->
	  <table id="ingTbl" class="table">
		<caption>현재 진행중인 계약 목록입니다.</caption>
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
	
	<div class="panel panel-danger">
	  <!-- Default panel contents -->
	  <div class="panel-heading">결재 대기 계약</div>
	
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

