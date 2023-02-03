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
				<h3>登記列表</h3>
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
								<th style="width: 50px">住戶姓名</th>
								<th style="width: 100px">CHECKIN</th>
								<th style="width: 100px">CHECKOUT</th>
								<th style="width: 100px">區域</th>
								<th style="width: 20px">編輯</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="rp" items="${Register}">
								<tr>
									<td>${rp.registerId}</td>
									<td>${rp.houseId}</td>
									<td>${rp.houseMember}</td>
									<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
											value="${rp.registerCheckIn}" /></td> 
									<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
											value="${rp.registerCheckOut}" /></td> 
									<td>${rp.registerspace}</td> 
									<td class="text-center">
<%--  										<a class="btn btn-warning btn-sm" href="${contextRoot}/equipment/RegisterEdit/${rp.registerId}">編輯</a>  --%>
<!-- 										 <a class="btn btn-warning btn-sm" id="edit">編輯</a> -->

										<a class="btn btn-danger btn-sm" onclick="return confirm('確定刪除嗎?')" href="${contextRoot}/Registers/delete/${rp.registerId}">刪除</a>
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

<script type="text/javascript">
	$("#edit").click (function(){

		const { value: formValues } = Swal.fire({
  title: 'Multiple inputs',
  html:
    '<input id="swal-input1" class="swal2-input">' +
    '<input id="swal-input2" class="swal2-input">',
  focusConfirm: false,
  preConfirm: () => {
    return [
      document.getElementById('swal-input1').value,
      document.getElementById('swal-input2').value
    ]
  }
})

if (formValues) {
  Swal.fire(JSON.stringify(formValues))
}


		fetch("/eNeighborIndex/Registers/update")
	})

</script>


<jsp:include page="../backpagemodel/footer.jsp"></jsp:include>
