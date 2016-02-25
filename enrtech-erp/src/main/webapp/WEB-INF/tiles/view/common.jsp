<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Modal -->
	<div class="modal fade" id="regContract" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Create Issue</h4>
				</div>
				<div class="modal-body">
				
					<!-- form -->
					<form>
						<div class="form-group">
							<label for="inputPJKey" class="control-label">Project Key</label>
							<input type="text" name="pkey" class="form-control input-sm"
									id="inputPJKey" placeholder="project key" required>
						</div>
						<div class="form-group">
							<label for="inputSummary" class="control-label">Summary</label>
							<input type="text" name="summary" class="form-control input-sm"
									id="inputSummary" placeholder="summary" required>
						</div>
						<div class="form-group">
							<label for="inputDesc" class="control-label">Description</label>
							<input type="text" name="desc" class="form-control input-sm"
									id="inputDesc" placeholder="description">
						</div>
						<div class="form-group">
							<label for="inputIssueType" class="control-label">Issue Type</label>
							<select name="itype" class="form-control">
							  <option>Improvement</option>
							  <option>Task</option>
							  <option>New Feature</option>
							  <option>Bug</option>
							</select>
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
