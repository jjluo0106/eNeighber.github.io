<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<jsp:include page="../backpagemodel/header.jsp"></jsp:include>

<head>
<meta charset="UTF-8">
<!-- 連結full Calendar -->
<link href="${contextRoot}/css/main.css" rel="stylesheet">
<script src="${contextRoot}/js/main.js"></script>

<!-- 轉中文 -->
<script src="${contextRoot}/js/locales-all.js"></script>

<link href="${contextRoot}/css/style.css" rel="stylesheet">



<!--  <!-- jQuery v1.9.1 --> 
<!--   <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script> -->
<!--   <!-- Moment.js v2.20.0 --> 
<!--   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.0/moment.min.js"></script> -->
<!--   <!-- FullCalendar v3.8.1 --> 
<!--   <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css" rel="stylesheet"  /> -->
<!--   <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css" rel="stylesheet" media="print"></script> -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script> -->

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			locale : 'zh-tw',
			editable: true, // 可編輯
			navLinks : true,
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			
			weekends: true, // 顯示星期六跟星期日
	  		editable: true,  // 啟動拖曳調整日期
		
		events:[
// 			{
// 				title:'KTV',
// 				start:'2022-12-28 14:00:00',
// 				color: 'yellow',
// 				end:'2022-12-28 18:00:00',
				
// 			},
// 			{
// 				title:'桌球',
// 				start:'2022-12-28 14:00:00',
// 				color:'green',
// 				end:'2022-12-28 16:00:00'
				
// 			},
// 			{
// 				title:'撞球',
// 				start:'2022-12-31 14:00:00',
// 				url: "http://google.com/",
// 				color: 'red',
// 				end:'2023-01-02 16:00:00'
// 			},
			
			<c:forEach var="i" items="${Reverses}">
			
			// let stime = reserveTime.split(":");
			// console.log(stime[0]);
			// console.log(stime[1]);
			// console.log(stime[2]);
			
			{
				title:'${i.reserveSpace}',
				start:'${i.reserveTime}',
				end:'${i.reserveEnd}',

				<c:if test="${i.reserveSpace == 'KTV' }">
				backgroundColor:'black'
				</c:if>
				<c:if test="${i.reserveSpace == '桌球' }">
				backgroundColor:'green'
				</c:if>
				<c:if test="${i.reserveSpace == '撞球' }">
				backgroundColor:'red'
				</c:if>
				<c:if test="${i.reserveSpace == '影視廳' }">
				backgroundColor:'orange'
				</c:if>
				
			},
			</c:forEach>
		]
		
		});
		calendar.render();
	});
</script>
</head>
<!-- start: Content -->

<body>
	<div class="">
		<div class="">
			<div class="">
				<div class="">
					<h2>公設預約系統</h2>
				</div>
				<div class="">
					<div class="">

						<div class='container'>
							<div id="calendar"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end: content -->
</body>

<jsp:include page="../backpagemodel/footer.jsp"></jsp:include>
