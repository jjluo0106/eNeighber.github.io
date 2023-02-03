<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

			<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

			<jsp:include page="../backpagemodel/header.jsp"></jsp:include>
			<!-- start: Content -->
			<div class="col-md-12 top-20 padding-0">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading">
							<h3>
								公設物件列表
								<div class="pull-right">
									<button class="btn btn-success addSuccess" data-toggle="modal"
										data-target="#myModal">新增維修物件</button>
								</div>
							</h3>
						</div>


						<div class="panel-body">
							<div class="responsive-table">
								<table id="datatables-example" class="table table-striped table-bordered" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th style="width: 20px">物件ID</th>
											<th style="width: 20px">物件名稱</th>
											<th style="width: 200px">花費</th>
											<th style="width: 200px">購入時間</th>
											<!-- 								<th style="width: 20px">區域</th> -->
											<!-- 								<th style="width: 20px">地點</th> -->
											<th style="width: 20px">核銷時間</th>
											<th style="width: 105px">編輯</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${Item}">
											<tr>
												<td>${i.itemId}</td>
												<td>${i.itemName}</td>
												<td>${i.itemCost}</td>
												<td>
													<fmt:formatDate pattern="yyyy/MM/dd" value="${i.itemBirth}" />
												</td>
												<td>
													<fmt:formatDate pattern="yyyy/MM/dd" value="${i.itemDie}" />
												</td>
												<td class="text-center">
												<c:if test="${i.itemDie == null}">
												<a class="btn btn-warning btn-sm updateBTN"
														data-toggle="modal" data-target="#myModalEdit"
														itemId="${i.itemId}" itemName="${i.itemName}"
														itemCost="${i.itemCost}" itemBirth="${i.itemBirth}"
														itemDie="${i.itemDie}">編輯</a>
												</c:if>
												<c:if test="${i.itemDie != null}">
												<a class="btn btn-dark btn-sm updateBTN"
														data-toggle="modal" data-target="#myModalEdit"
														itemId="${i.itemId}" itemName="${i.itemName}"
														itemCost="${i.itemCost}" itemBirth="${i.itemBirth}"
														itemDie="${i.itemDie}">已核銷</a>
												</c:if>
														
														
														 <a class="btn btn-danger btn-sm"
														onclick="return confirm('確定刪除嗎?')"
														href="${contextRoot}/ManageMain/item/delete/${i.itemId}">刪除</a>
												</td>
											</tr>
										</c:forEach>
										<%----------------------------------------------------- 修改彈出------------------%>
											<div class="modal fade" id="myModalEdit" tabindex="-1" role="dialog"
												aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h4 class="modal-title" id="myModalLabel">修改物件</h4>
														</div>
														<div class="modal-body form-element">
															<div class="form-element-padding">
																<!-- <form action="${contextRoot}/Items/Entrance/update" -->
																<!-- method="post" enctype="multipart/form-data"> -->

																<input name="itemId" id="itemId" type="hidden">

																<div class="form-group">
																	<label
																		class="col-sm-2 control-label text-right">物件名稱</label>
																	<div class="col-sm-10">
																		<input type="text"
																			class="form-control border-left"
																			name="itemName" id="itemName"
																			required>
																	</div>
																</div>


																<div class="form-group">
																	<label
																		class="col-sm-2 control-label text-right">金額</label>
																	<div class="col-sm-10">
																		<input type="text"
																			class="form-control border-left"
																			name="itemCost" id="itemCost">
																	</div>
																</div>

																<div class="form-group">
																	<label
																		class="col-sm-2 control-label text-right">購入時間</label>
																	<div class="col-sm-10">
																		<input type="text"
																			class="form-control border-left"
																			name="itemBirth" id="itemBirth" required>
																	</div>
																</div>

																<div class="form-group">
																	<label
																		class="col-sm-2 control-label text-right">核銷時間(預設今天</label>
																	<div class="col-sm-10">
																		<input type="text"
																			class="form-control border-left"
																			name="itemDie" id="itemDie">
																	</div>
																</div>
																<!-- 						<div class="form-group"> -->
																<!-- 							<label class="col-sm-2 control-label text-right">照片</label> <input -->
																<!-- 								id="Photo" type="file" name="file" style="display: inline" /> -->
																<!-- 							<input type="hidden" name="maintainPhoto" id="productPhotos" /> -->
																<!-- 							<div> -->
																<!-- 								<img class="img" name="imgpreview" id="imgpreview" -->
																<!-- 									style="width: 200px" /> -->
																<!-- 							</div> -->

																<!-- 							<input name="itemId" type="hidden" /> -->
																<!-- 						</div> -->
																<div class="form-group text-center"
																	style="margin-top: 10px">
																	<a class="btn btn-primary edit">送出</a>

																</div>
																<!-- </form> -->
															</div>
														</div>

													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>
											<%-----------------------------------------------------
												修改彈出尾------------------------------%>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<script type="text/javascript">
// 成功延遲
	function success1500(){
		Swal.fire({
			  position: 'top-end',
			  icon: 'error',
			  title: '預約失敗，指定時間已被預定',
			  showConfirmButton: false,
			  timer: 1500
			})
		
		setTimeout("gosub()",1500);
	} 
function gosub(){
	ff.submit();
}
</script>			
			
			<!-- end: content -->
			<script>
				$(".updateBTN").click(function () {//修改彈出視窗塞值修改彈出視窗塞值修改彈出視窗塞值修改彈出視窗塞值
					const itemId = this.getAttribute("itemId");//在修改按鈕抓取回圈的各項屬性值
					const itemName = this.getAttribute("itemName");
					const itemBirth = this.getAttribute("itemBirth");
					const itemDie = this.getAttribute("itemDie");
					const itemCost = this.getAttribute("itemCost");

					console.log("狀態碼測試 : " + ${ pageContext.errorData.statusCode });//不知道到底有沒有用(一直為0)
					$("#itemId").val(itemId);
					$("#itemName").val(itemName);

					let fitemBirth = itemBirth.split(/[-. ]/);//正則表達式切割字串
					let oitemBirth = fitemBirth[0] + "/" + fitemBirth[1]
						+ "/" + fitemBirth[2];//切割後組合
					console.log("fitemBirth = " + fitemBirth);
					console.log("oitemBirth = " + oitemBirth);

					$("#itemBirth").val(oitemBirth);

// 					let fitemDie = itemDie.split(/[-.]/);//正則表達式切割字串
// 					let oitemDie = fitemDie[0] + "/" + fitemDie[1]
// 						+ "/" + fitemDie[2];//切割後組合
// 					console.log("fitemDie = " + fitemDie);
// 					console.log("oitemDie = " + oitemDie);
					let objectDate = new Date();


					let day = objectDate.getDate();
					console.log(day); // 23
					
					let month = objectDate.getMonth()+1;
					console.log(month + 1); // 8
					
					let year = objectDate.getFullYear();
					console.log(year); // 2022
					alldate = year + "/" + month + "/" + day

					let format1 = `${month}/${day}/${year}`;
					$("#itemDie").val(alldate);

					$("#itemCost").val(itemCost);
				})
			</script>
			<script type="text/javascript">
				$(".edit").click(function () {//修改送出修改送出修改送出修改送出fetch
					let itemId = document.getElementById("itemId").value;
					let itemName = document.getElementById("itemName").value;
					let itemCost = document.getElementById("itemCost").value;
					let itemBirth = document.getElementById("itemBirth").value;
					let itemDie = document.getElementById("itemDie").value;

					console.log("itemId = " + itemId);
					console.log("itemName = " + itemName);
					console.log("itemCost = " + itemCost);
					console.log("itemBirth = " + itemBirth);
					console.log("itemDie = " + itemDie);

					let data = {//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjson
						"itemId": itemId,
						"itemName": itemName,
						"itemCost": itemCost,
						"itemBirth": itemBirth,
						"itemDie": itemDie
					}

					fetch("${contextRoot}/Items/Entrance/update", { method: "Post", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" } }).then(result => result.text()).then(status => {
						console.log("itemId = " + itemId);
						console.log("itemName = " + itemName);
						console.log("itemCost = " + itemCost);
						console.log("itemBirth = " + itemBirth);
						console.log("itemDie = " + itemDie);

						// location.reload()
						// $(".panel-body").load(location.href+" .panel-body>*","");

						Swal.fire({
							position: 'top-end',
							icon: 'success',
							title: 'Your work has been saved',
							showConfirmButton: false,
							timer: 1500
						})
						setInterval("location.reload()",1500);//1.5秒後頁面重導
					})
					// 							setInterval("location.reload()",1500);//1.5秒後頁面重導
				})

//修改修改fetchEnd
			</script>
			<script type="text/javascript">
				$(document)
					.ready(
						function () {
							$('#datatables-example')
								.DataTable(
									{
										language: {
											url: 'https://cdn.datatables.net/plug-ins/1.11.5/i18n/zh-HANT.json',
											lengthMenu: '顯示_MENU_筆',
										},
									});
						});
			</script>
			<%----------------------------------------------------- 新增彈出-----%>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
					aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">新增物件</h4>
							</div>
							<div class="modal-body form-element">
								<div class="form-element-padding">
									<!-- <form action="${contextRoot}/Items/Add" method="post" enctype="multipart/form-data"> -->

									<div class="form-group">
										<label class="col-sm-2 control-label text-right">物件名稱</label>
										<div class="col-sm-10">
											<input type="text" class="form-control border-left" name="itemName"
												id="aitemName" required>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label text-right">金額</label>
										<div class="col-sm-10">
											<input type="text" class="form-control border-left" name="itemCost"
												id="aitemCost" required>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label text-right">購入時間</label>
										<div class="col-sm-10">
											<input type="Date" class="form-control border-left" name="itemBirth"
												id="aitemBirth" required>
										</div>
									</div>


									<input name="itemId" id="aitemId" type="hidden">
									<div class="form-group text-center" style="margin-top: 10px">
										<a class="btn btn-primary addBTN">送出</a>

									</div>
									<!-- </form> -->
								</div>
							</div>

						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<%----------------------------------------------------- 新增彈出尾
					-----------------------------------------------------%>
					<script type="text/javascript">
						// 新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch

						$(".addBTN").click(function () {
							// const itemId = $("#aitemId").val();
							const itemName = $("#aitemName").val();
							const itemCost = $("#aitemCost").val();
							const itemBirth = $("#aitemBirth").val();
							const itemDie = $("#aitemDie").val();

							console.log("itemId = " + itemId);
							console.log("itemName = " + itemName);
							console.log("itemCost = " + itemCost);
// 							console.log("fitemDie = " + itemBirth);
// 							console.log("itemDie = " + itemDie);

							let fitemBirth = itemBirth.split(/[-.]/);//正則表達式切割字串
							let oitemBirth = fitemBirth[0] + "/" + fitemBirth[1]
								+ "/" + fitemBirth[2];//切割後組合
// 							let fitemDie = itemDie.split(/[-.]/);//正則表達式切割字串
// 							let oitemDie = null;
								
// 							if(itemDie != null){	
// 								oitemDie = fitemDie[0] + "/" + fitemDie[1]
// 								+ "/" + fitemDie[2];//切割後組合
// 								console.log("oitemBirth = " + oitemBirth);
// 							}

// 							console.log("oitemDie = " + oitemDie);
							let data = {//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjson
								// "itemId": itemId,
								"itemName": itemName,
								"itemCost": itemCost,
								"itemBirth": oitemBirth,
// 								"itemDie": oitemDie
							}

							fetch("${contextRoot}/Items/Add",
								{
									method: "Post", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }
								}).then(result => result.text()).then(message => {

									Swal.fire({
										position: 'top-end',
										icon: 'success',
										title: 'Your work has been saved',
										showConfirmButton: false,
										timer: 1500
									});
									setInterval("location.reload()",1500);//1.5秒後頁面重導

								})

							//新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetchEnd
						})
					</script>
					<jsp:include page="../backpagemodel/footer.jsp"></jsp:include>