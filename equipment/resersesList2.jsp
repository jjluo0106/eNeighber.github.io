<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<jsp:include page="../backpagemodel/header.jsp"></jsp:include>
<!-- start: Content -->
<div class="col-md-12 top-20 padding-0">
	<div class="col-md-12">
		<div class="panel">
			<div class="panel-heading">
				<h3>
					公設預約列表
					<div class="pull-right">
						<button class="btn btn-success" data-toggle="modal"
							data-target="#myModal">新增預約</button>
					</div>
				</h3>
			</div>
			<div class="panel-body">
				<div class="responsive-table">
					<table id="datatables-example"
						class="table table-striped table-bordered" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th style="width: 20px">預約ID</th>
								<th style="width: 20px">住戶ID</th>
								<th style="width: 50px">預約地點</th>
								<th style="width: 150px">開始使用時間</th>
								<th style="width: 150px">結束使用時間</th>
								<!-- 								<th style="width: 20px">區域</th> -->
								<!-- 								<th style="width: 20px">地點</th> -->
								<!-- 								<th style="width: 20px"></th> -->
								<th style="width: 20px">編輯</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" items="${Reverses}">
								<tr>
									<td>${i.reserveId}</td>
									<td>${i.houseId}</td>
									<td>${i.reserveSpace}</td>
									<td><fmt:formatDate pattern="yyyy/MM/dd hh:mm:ss"
											value="${i.reserveTime}" /></td>
									<td><fmt:formatDate pattern="yyyy/MM/dd hh:mm:ss"
											value="${i.reserveEnd}" /></td>
									<td class="text-center">
<!-- 									<a class="btn btn-warning btn-sm" -->
<%-- 										href="${contextRoot}/equipment/ReserveEdit/${i.reserveId}">編輯</a> --%>
										<a class="btn btn-danger btn-sm"
										onclick="return confirm('確定刪除嗎?')"
										href="${contextRoot}/ManageMain/reserve/delete/${i.reserveId}">刪除</a>
									</td>
								</tr>

							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end: content -->

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#datatables-example')
								.DataTable(
										{
											language : {
												url : 'https://cdn.datatables.net/plug-ins/1.11.5/i18n/zh-HANT.json',
												lengthMenu : '顯示_MENU_筆',
											},
										});
					});
</script>


<%----------------------------------------------------- 新增彈出 -----------------------------------------------------%>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">新增預約</h4>
			</div>
			<div class="modal-body form-element">
				<div class="form-element-padding">

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">住戶ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left" id="ID"
									name="houseId" value="" required>
							</div>
						</div>

						<!-- 					<input name="" type="hidden"/> -->

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">預約地點</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left" id="reserveSpace"
									name="reserveSpace" value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">日期</label><input
								id="fdate" class="swal2-input" type="date">
						</div>
						
						<div class="form-group">
						<label class="col-sm-2 control-label text-right">時段</label><select id="type">
							<optgroup label="早上">
								<option id="op1" value="1">8點~10點</option>
								<option id="op2">10點~12點</option>
							</optgroup>
							<optgroup label="下午">
								<option id="op3">12點~2點</option>
								<option id="op4">2點~4點</option>
								<option id="op5">4點~6點</option>
							</optgroup>
							<optgroup label="晚上">
								<option id="op6">6點~8點</option>
								<option id="op7">8點~10點</option>
							</optgroup>
						</select>
						</div>


						<div class="form-group text-center" style="margin-top: 10px">
							<button  class="addreserve btn btn-primary">送出</button>
							<button type="reset" class="btn btn-warning">重置</button>
						</div>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>
<%----------------------------------------------------- 新增彈出尾 -----------------------------------------------------%>

<script type="text/javascript">

						$(".addreserve").click(function () {
								
									console.log("AAAAAAAAAAAAAAA")
									
									let houseId = document.getElementById("ID").value;//houseId
									let reserveSpace = document.getElementById("reserveSpace").value;//reserveSpace
									let timeState = document.getElementById("op1").value;//時間狀態
									let fdate = document.getElementById("fdate").value;//日期
									let mdate = fdate.split(/-/);//陣列
									let reserveTime = mdate[0] + '/' + mdate[1] + '/' + mdate[2] + ' ';
									let reserveEnd = mdate[0] + '/' + mdate[1] + '/' + mdate[2] + ' ';
									console.log("reserveTime = " + reserveTime);
									if (timeState == 1) {
										reserveTime += '08:00:00';
										reserveEnd += '10:00:00';
									}
									if (timeState == 2) {
										reserveTime += '10:00:00';
										reserveEnd += '12:00:00';
									}
									if (timeState == 3) {
										reserveTime += '12:00:00';
										reserveEnd += '14:00:00';
									}
									if (timeState == 4) {
										reserveTime += '14:00:00';
										reserveEnd += '16:00:00';
									}
									if (timeState == 5) {
										reserveTime += '16:00:00';
										reserveEnd += '18:00:00';
									}
									if (timeState == 6) {
										reserveTime += '18:00:00';
										reserveEnd += '20:00:00';
									}
									if (timeState == 7) {
										reserveTime += '20:00:00';
										reserveEnd += '22:00:00';
									}

									let data = {//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjson
										"reserveTime": reserveTime,
										"reserveEnd": reserveEnd,
										"houseId": houseId,
										"reserveSpace": reserveSpace
									}
									console.log("reserveTime = " + reserveTime);
									console.log("reserveEnd = " + reserveEnd);
									console.log("reserveSpace = " + data.reserveSpace);
									console.log("timeState = " + timeState);

									fetch("/eNeighborIndex/equipment/Equipment/Add",{method: "Post", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }}).then(result => result.txet()).then(message=>{
											
										console.log(message)
										});
									 location.reload();
								
						})

					</script>

<jsp:include page="../backpagemodel/footer.jsp"></jsp:include>
