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
								<div class='input-group'>
				                    <input type='text' id="contractDt" name="contractDt" class="date-picker form-control input-sm" required/>
				                    <label for="contractDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
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
						<div class="form-group control-group">
							<label class="control-label col-sm-2">착공예정일</label>
							<div class="col-sm-2 controls">
								<div class='input-group'>
				                    <input type='text' id="cnstrctStartDt" name="cnstrctStartDt" class="date-picker form-control input-sm" required/>
				                    <label for="cnstrctStartDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
							<label class="control-label col-sm-2">준공예정일</label>
							<div class="col-sm-2">
								<div class='input-group'>
				                    <input type='text' id="cnstrctEndDt" name="cnstrctEndDt" class="date-picker form-control input-sm" required/>
				                    <label for="cnstrctEndDt" class="input-group-addon btn">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </label>
				                </div>
			                </div>
			                <label for="maintenance" class="control-label col-sm-2">하자보증기간</label>
							<div class="col-sm-2">
								<input type="text" id="maintenance" name="maintenance" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장주소</label>
							<div class="col-sm-9 row">
								<div class="col-sm-2">
									<input type="text" id="postNum1" name="postNum1" class="form-control input-sm" placeholder="우편번호1" required />
								</div>
								<div class="col-sm-2">
									<input type="text" id="postNum2" name="postNum2" class="form-control input-sm" placeholder="우편번호2" required />
								</div>
								<button type="button" class="btn btn-primary btn-sm">우편번호 선택</button>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctAddr1" name="cnstrctAddr1" class="form-control input-sm" placeholder="주소1" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
								<input type="text" id="cnstrctAddr2" name="cnstrctAddr2" class="form-control input-sm" placeholder="주소2" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장 연락처</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctPhone" name="cnstrctPhone" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-3">현장 공무담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctPubMnger" name="cnstrctPubMnger" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">현장 공사담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctRelMnger" name="cnstrctRelMnger" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-3">담당부서</label>
							<div class="col-sm-3">
								<input type="text" id="mngTeam" name="mngTeam" class="form-control input-sm" required />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">영업 담당자</label>
							<div class="col-sm-3">
								<input type="text" id="salesMnger" name="salesMnger" class="form-control input-sm" required />
							</div>
							<label class="control-label col-sm-3">공사담당자</label>
							<div class="col-sm-3">
								<input type="text" id="cnstrctMnger" name="cnstrctMnger" class="form-control input-sm" required />
							</div>
						</div>
						
					</form>
	
				</div>
				
				<div class="modal-footer">
					<button type="button" id="btnCreate" class="btn btn-primary">등록하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>