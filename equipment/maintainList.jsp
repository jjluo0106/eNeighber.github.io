<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<jsp:include page="../backpagemodel/header.jsp"></jsp:include>


<head>
<style>
#dialog_pic {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0,0,0,0.65);
  z-index: 100;
  display: none;
  .dialog-body {
    width: 100%;
    max-width: 250px;
    max-height: 300px;
    margin: 0 auto;
    padding: 10px;
    border-radius: 5px;
    background: white;
    overflow: auto;
    margin-top: 283px;
    img {
      width: 100%;
    }
  }
}


</style>

</head>
<body>
<!-- start: Content -->
<div class="col-md-12 top-20 padding-0">
	<div class="col-md-12">
		<div class="panel">
			<div class="panel-heading">
<!-- 			圖片出現的位子 -->
			<div id="dialog_large_image">
			</div>
				<h3>公設維護列表<div class="pull-right">
						<button class="btn btn-success" data-toggle="modal" data-target="#myModal">新增維修物件</button>
					</div>
				</h3>
			</div>
			<div class="panel-body">
				<div class="responsive-table">
					<table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th style="width: 100px">物件ID</th>
								<th style="width: 100px">物件名稱</th>
								<th style="width: 150px">舉報時間</th>
								<th style="width: 150px">維修完成時間</th>
								<th style="width: 100px">區域</th>
								<th style="width: 100px">地點</th>
								<th style="width: 100px">維修金額</th>
								<th style="width: 100px">備註</th>
								<!-- 								<th style="width: 20px">狀態</th> -->
								<th style="width: 100px">照片</th>
								<th style="width: 100px">舉報用戶</th>
								<th style="width: 100px">編輯</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="MT" items="${Maintains}">
								<tr>
									<td>${MT.maintainId}</td>
									<td>${MT.maintainItem}</td>
									<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
											value="${MT.maintainTime}" /></td>
									<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
 											value="${MT.doneTime}" /></td>
									<td>${MT.maintainspace}</td>
									<td>${MT.maintainLocatin}</td>
									<td>${MT.maintainCost}</td>
									<td>${MT.maintainNote}</td>
									<td><div>
											<img id="iii" src="${MT.maintainPhoto}" class="dialog result_pics result_pics pimg pimg" 
												style="width: 50px; margin: 0; padding: 0" ping="${MT.maintainPhoto}" onerror="nofind()"/>
										</div>
										
										</td>
									<td>${MT.houseId}</td>
									<td class="text-center">
									<c:if test="${MT.maintainCost == null}">
										<button class="btn btn-info btn btn-warning btn-sm updateBTN"
											data-toggle="modal" data-target="#myModalAdd"
											maintainItem="${MT.maintainItem}"
											maintainId="${MT.maintainId}"
											maintainTime="${MT.maintainTime}" doneTime="${MT.doneTime}"
											maintainspace="${MT.maintainspace}"
											maintainLocatin="${MT.maintainLocatin}"
											maintainCost="${MT.maintainCost}" houseId="${MT.houseId}"
											maintainNote="${MT.maintainNote}">未審核</button> 
									</c:if>
									<c:if test="${MT.maintainCost != null}">
										<button class="btn btn-info btn btn-info btn-sm updateBTN"
											data-toggle="modal" data-target="#myModalAdd"
											maintainItem="${MT.maintainItem}"
											maintainId="${MT.maintainId}"
											maintainTime="${MT.maintainTime}" doneTime="${MT.doneTime}"
											maintainspace="${MT.maintainspace}"
											maintainLocatin="${MT.maintainLocatin}"
											maintainCost="${MT.maintainCost}" houseId="${MT.houseId}"
											maintainNote="${MT.maintainNote}" maintainPhoto="${MT.maintainPhoto}">已審核</button> 
									</c:if>		
											
											<a
										class="btn btn-danger btn-sm delete-button"
										maintainId="${MT.maintainId}">刪除</a>
									</td>
									<!-- 										用 maintainId 做fetch -->
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

<%----------------------------------------------------- 彈出新增列表-----------%>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">新增維修物件<button class="qk" style="background-color: transparent;opacity: 0.1; border: 1mm ridge rgba(211, 220, 50, .6);">一鍵輸入</button></h4>
			</div>
			<div class="modal-body form-element">
				<div class="form-element-padding">
					<form action="${contextRoot}/Maintains/Entrance/add" id="addform"
						method="post" enctype="multipart/form-data">

						

						<input name="maintainId" type="hidden" /> 
						<input name="maintainTime" type="hidden"/>
						<!-- 					<input name="maintainTime" /> -->
						<input name="doneTime" type="hidden"/>
						
						<div class="form-group">
							<label class="col-sm-2 control-label text-right">住戶ID</label>
							<div class="col-sm-10">
								<input class="form-control"
									name="houseId" id="houseId" value="">
							</div>
						</div>
						
						
						<div class="form-group">
							<label class="col-sm-2 control-label text-right">物件名稱</label>
							<div class="col-sm-10">
								<input class="form-control"
									name="maintainItem" id="maintainItem" required value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label text-right">維修金額</label>
							<div class="col-sm-10">
								<input class="form-control"
									name="maintainCost" value="">
							</div>
						</div>

						<!-- 					<div class="form-group"> -->
						<!-- 						<label class="col-sm-2 control-label text-right">發現時間</label> -->
						<!-- 						<div class="col-sm-10"> -->
						<!-- 							<input type="text" class="form-control border-left" name="maintainTime" value="" required> -->
						<!-- 						</div> -->
						<!-- 					</div>						 -->

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">區域</label>
							<div class="col-sm-10">
								<div class="col-sm-12 padding-0">
									<input class="form-control" name="maintainspace" id="maintainspace" required>
<!-- 										<option value="">請選擇</option> -->
<!-- 										<option value="A棟">A棟</option> -->
<!-- 										<option value="B棟">B棟</option> -->
<!-- 										<option value="C棟">C棟</option> -->
<!-- 										<option value="戶外">戶外</option> -->
<!-- 									</select> -->
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">地點</label>
							<div class="col-sm-10">
								<div class="col-sm-12 padding-0">
									<input class="form-control" name="maintainLocatin" id="maintainLocatin" required>
<!-- 										<option value="">請選擇</option> -->
<!-- 										<option value="健身房">健身房</option> -->
<!-- 										<option value="游泳池">游泳池</option> -->
<!-- 										<option value="三溫暖">三溫暖</option> -->
<!-- 										<option value="停車場">停車場</option> -->
<!-- 										<option value="中庭">中庭</option> -->
										
<!-- 									</select> -->
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">備註</label>
							<div class="col-sm-10">
								<textarea cols="50" rows="5" name="maintainNote" id="maintainNote" value=""></textarea>
							</div>
						</div>

						<br> <br> <br>
						<div class="form-group">
							<label class="col-sm-2 control-label text-right">照片</label> <input
								id="Photo" type="file" name="file" style="display: inline" /> 
								<input
								type="hidden" name="maintainPhoto" id="productPhotos" value=""/>
							<div>
								<img class="img" name="imgpreview" id="imgpreview"
									style="width: 200px" />
							</div>
						</div>

						<div class="form-group text-center" style="margin-top: 10px">
							<a class="btn btn-primary st1500">送出</a>
						</div>
					</form>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>
<%----------------------------------------------------- 新增彈出end-------------%>

<script type="text/javascript">

$(".qk").click (function(){//一鍵 oneclick
	$("#houseId").val("11");
	$("#maintainItem").val("遮雨棚");
	$("#maintainspace").val("戶外");
	$("#maintainLocatin").val("中庭");
	$("#maintainNote").val("遮雨棚玻璃有大面積龜裂，請馬上找廠商維修！！");
})
</script>

<%----------------------------------------------------- 彈出修改列表----------------%>
<div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">維修物件修改</h4>
			</div>
			<div class="modal-body form-element">
				<div class="form-element-padding">
					<form action="${contextRoot}/Maintains/Entrance/update"
						method="post" enctype="multipart/form-data" id="editform">

						<div class="form-group">
							<label class="col-sm-2 control-label text-right ">物件名稱</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left maintainItem"
									name="maintainItem" value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right ">舉報時間</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left maintainTime"
									name="maintainTime" value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">區域</label>
							<div class="col-sm-10">
								<input type="text"
									class="form-control border-left maintainspace"
									name="maintainspace" value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">地點</label>
							<div class="col-sm-10">
								<input type="text"
									class="form-control border-left maintainLocatin"
									name="maintainLocatin" value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">維修金額</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left maintainCost"
									name="maintainCost">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-right">報修住戶</label>
							<div class="col-sm-10">
								<input type="text" class="form-control border-left houseId"
									name="houseId">
							</div>
						</div>
						<input name="maintainPhoto" type="hidden" class="maintainPhoto" />
						<input name="maintainId" type="hidden" class="maintainId" />

<!-- 											<div class="form-group"> -->
<!-- 												<label class="col-sm-2 control-label text-right">發現時間</label> -->
<!-- 												<div class="col-sm-10"> -->
<!-- 													<input type="text" class="form-control border-left" name="maintainTime" value="" required> -->
<!-- 												</div> -->
<!-- 											</div>						 -->

<!-- <br> <br> <br> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label class="col-sm-2 control-label text-right">照片</label> <input -->
<!-- 								id="Photo" type="file" name="file" style="display: inline" /> <input -->
<!-- 								type="hidden" name="maintainPhoto" id="productPhotos" /> -->
<!-- 							<div> -->
<!-- 								<img class="img" name="imgpreview" id="imgpreview" -->
<!-- 									style="width: 200px" /> -->
<!-- 							</div> -->
<!-- 						</div> -->

						<div class="form-group">
							<label class="col-sm-2 control-label text-right maintainNote">備註</label>
							<div class="col-sm-10">
								<textarea cols="50" rows="5" name="maintainNote"
									class="maintainNote"></textarea>
							</div>
						</div>

						<div class="form-group text-center" style="margin-top: 10px">
							<a class="btn btn-primary edit st1500edit">送出</a>
<!-- 							修改送出############ -->
						</div>
					</form>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>


<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;">
    <div id="innerdiv" style="position:absolute;">
        <img id="bigimg" style="border:5px solid #fff;" src="" />
    </div>
</div>


</body>

<script type="text/javascript">
// form成功延遲###########################################
$(".st1500").click(function(){
		Swal.fire({
			  position: 'top-end',
			  icon: 'success',
			  title: '更新成功',
			  showConfirmButton: false,
			  timer: 1500
			})
		setTimeout('$("#addform").submit()',500);//新增
})

$(".st1500edit").click(function(){
		Swal.fire({
			  position: 'top-end',
			  icon: 'success',
			  title: '更新成功',
			  showConfirmButton: false,
			  timer: 1500
			})
		setTimeout('$("#editform").submit()',500);//修改
})

function gosub(){
	myModalLabel.submit();
}
</script>
<%----------------------------------------------------- 修改彈出end----------------------%>
<script type="text/javascript">
	$(document).ready(function() {
			$('#datatables-example').DataTable({
				language: {
			url: 'https://cdn.datatables.net/plug-ins/1.11.5/i18n/zh-HANT.json',
			lengthMenu: '顯示_MENU_筆',
				},
				order: [[0, 'desc']],
			});
		});
</script>
<script type="text/javascript">//<!-- 刪除按鈕 --------------------------------------------------------------------->
					$(".delete-button").click(function dd() {
						Swal.fire({
							title: '警告!!',
							text: "刪除後資料經會永久遺失",
							icon: 'warning',
							showCancelButton: true,
							confirmButtonColor: '#3085d6',
							cancelButtonColor: '#d33',
							confirmButtonText: '確定'
						}).then((result) => {
							if (result.isConfirmed) {
								Swal.fire(
									'刪除成功!',
									'Your file has been deleted.',
									'success'
								)
								const maintainId = this.getAttribute("maintainId");
								console.log(maintainId)
								fetch("/eNeighborIndex/ManageMain/maintain/delete?maintainId=" + maintainId).then(result => result.text()).then(status => {
									$(this).parent().parent().remove()
								})
							}
						})
					})//<!-- 刪除按鈕 ------------------------------------------------------------------------------------------->
				</script>


<%----------------------------------------------------- 新增彈出尾
					-----------------------------------------------------%>
					<script type="text/javascript">
						// 新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch新增fetch改一半

						$(".addBTN").click(function () {
							const itemName = $("#aitemName").val();
							const itemCost = $("#aitemCost").val();
							const itemBirth = $("#aitemBirth").val();
							const itemDie = $("#aitemDie").val();

							console.log("itemId = " + itemId);
							console.log("itemName = " + itemName);
							console.log("itemCost = " + itemCost);
// 							co
							let fitemBirth = itemBirth.split(/[-.]/);//正則表達式切割字串
							let oitemBirth = fitemBirth[0] + "/" + fitemBirth[1]
								+ "/" + fitemBirth[2];//切割後組合
// 	
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

<script>
	$("#Photo").change(function () {//<!-- 照片選取後彈出 -->
		readURL(this); // this代表<input id="imgpreview">
	});
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$("#imgpreview").attr('src', e.target.result);
				document.getElementById("maintainPhoto").value = e.target.result;
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#reset").click(function () {
		$("#imgpreview").attr('src', null);
	});//<!-- 照片選取後彈出end -->
</script>

<script>
	$(".updateBTN").click(function () {//彈出視窗塞值#######################################
		const maintainId = this.getAttribute("maintainId");//在修改按鈕抓取回圈的各項屬性值
		const maintainItem = this.getAttribute("maintainItem");
		const maintainTime = this.getAttribute("maintainTime");
		const doneTime = this.getAttribute("doneTime");
		const maintainspace = this.getAttribute("maintainspace");
		const maintainLocatin = this.getAttribute("maintainLocatin");
		const maintainCost = this.getAttribute("maintainCost");
		const maintainNote = this.getAttribute("maintainNote");
		const houseId = this.getAttribute("houseId");
		const maintainPhoto = this.getAttribute("maintainPhoto");

		$(".maintainId").val(maintainId);
		$(".maintainItem").val(maintainItem);

		let fmaintainTime = maintainTime.split(/[-.]/);//正則表達式切割字串
		let omaintainTime = fmaintainTime[0] + "/" + fmaintainTime[1] + "/" + fmaintainTime[2];//切割後組合
		console.log("omaintainTime = " + omaintainTime);
		$(".maintainTime").val(omaintainTime);
		$(".maintainTime").val(omaintainTime);
		$(".houseId").val(houseId);
		if(doneTime != null){
			let fdoneTime = doneTime.split(/[-.]/);//正則表達式切割字串
			let odoneTime = fdoneTime[0] + "/" + fdoneTime[1]
				+ "/" + fdoneTime[2];//切割後組合
			console.log("fdoneTime = " + fmaintainTime);
			console.log("odoneTime = " + omaintainTime);
			$(".doneTime").val(odoneTime);
		}
		else{
			$(".doneTime").val(doneTime);
		}
		$(".maintainPhoto").val(maintainPhoto);
		$(".maintainspace").val(maintainspace);
		$(".maintainLocatin").val(maintainLocatin);
		$(".maintainCost").val(maintainCost);
		$(".maintainNote").val(maintainNote);
		$(".maintainNote").val(maintainNote);

	})
 </script> 	
	


<script type="text/javascript">

	
	$(function(){  //點選圖片彈出大圖################################
        $(".pimg").click(function(){ 
        	console.log("test########################");
            var _this = $(this);//將當前的pimg元素作為_this傳入函式  
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
        });  
    });  

    function imgShow(outerdiv, innerdiv, bigimg, _this){  
        var src = _this.attr("src");//獲取當前點選的pimg元素中的src屬性  
        $(bigimg).attr("src", src);//設定#bigimg元素的src屬性  
      
            /*獲取當前點選圖片的真實大小，並顯示彈出層及大圖*/  
        $("<img/>").attr("src", src).load(function(){  
            var windowW = $(window).width();//獲取當前視窗寬度  
            var windowH = $(window).height();//獲取當前視窗高度  
            var realWidth = this.width;//獲取圖片真實寬度  
            var realHeight = this.height;//獲取圖片真實高度  
            var imgWidth, imgHeight;  
            var scale = 0.8;//縮放尺寸，當圖片真實寬度和高度大於視窗寬度和高度時進行縮放  
              
            if(realHeight>windowH*scale) {//判斷圖片高度  
                imgHeight = windowH*scale;//如大於視窗高度，圖片高度進行縮放  
                imgWidth = imgHeight/realHeight*realWidth;//等比例縮放寬度  
                if(imgWidth>windowW*scale) {//如寬度扔大於視窗寬度  
                    imgWidth = windowW*scale;//再對寬度進行縮放  
                }  
            } else if(realWidth>windowW*scale) {//如圖片高度合適，判斷圖片寬度  
                imgWidth = windowW*scale;//如大於視窗寬度，圖片寬度進行縮放  
                            imgHeight = imgWidth/realWidth*realHeight;//等比例縮放高度  
            } else {//如果圖片真實高度和寬度都符合要求，高寬不變  
                imgWidth = realWidth;  
                imgHeight = realHeight;  
            }  
                    $(bigimg).css("width",imgWidth);//以最終的寬度對圖片縮放  
              
            var w = (windowW-imgWidth)/2;//計算圖片與視窗左邊距  
            var h = (windowH-imgHeight)/2;//計算圖片與視窗上邊距  
            $(innerdiv).css({"top":h, "left":w});//設定#innerdiv的top和left屬性  
            $(outerdiv).fadeIn("fast");//淡入顯示#outerdiv及.pimg  
        });  
          
        $(outerdiv).click(function(){//再次點選淡出消失彈出層  
            $(this).fadeOut("fast");  
        });  
    }


</script>






<jsp:include page="../backpagemodel/footer.jsp"></jsp:include>