<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script>
$(function(){
	// 모달
	var myModal = document.getElementById('lecRoomModal')
	var myInput = document.getElementById('myInput')
	
	myModal.addEventListener('shown.bs.modal', function () {
	  myInput.focus()
	});
});
</script>
<sec:authentication property="principal.userInfoVO" var="userInfoVO" />
<!-- 강의실 검색 모달 -->
<!-- Vertically centered modal -->
<!-- Modal -->
<div class="modal fade" id="lecRoomModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<div>
	<table class="table table-bordered text-center w-75">
		<tr>
			<td>강의실</td>
			<td>
				<div class="input-group input-group-sm">
					<input type="text" name="table_search" class="form-control float-right" placeholder="Search">
					<div class="input-group-append">
						<button id="" class="btn btn-default" data-toggle="modal" data-target="#lecRoomModal">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</td>
			<td>강의실 번호</td>
			<td><input type="text" class="form-control" id="" placeholder=""></td>
		</tr>
		<tr>
			<td>시작교시</td>
			<td colspan="2"><input type="text" class="form-control" id="" placeholder=""></td>
			<td>종료교시</td>
			<td colspan="2"><input type="text" class="form-control" id="" placeholder=""></td>
		</tr>
	</table>
</div>