@@ -0,0 +1,17 @@
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				<br>어?! 이게 뭐지.. 왜 회식메뉴를 적어둔 종이가 들어있지?
                <br>옆에 결재판도 함께 놓여있다.<br>
			</h2>
			<div class="school__btns">
				<button onclick="location.href='office_s2.jsp'" data-aos="fade-up" data-aos-duration=1500>결재판 보기</button>
				<button onclick="location.href='office_s3.jsp'" data-aos="fade-up" data-aos-duration=1500>종이 보기</button>
			</div>
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
No newline at end of file
