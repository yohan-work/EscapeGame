@@ -0,0 +1,17 @@
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				<br>일단 부장님 자리에 올려두긴 했는데..
				<br>어라 근데 이게 뭐지? 인사평가표?<br>
			</h2>
			<div class="school__btns">
				<button onclick="location.href='office_s7.jsp'" data-aos="fade-up" data-aos-duration=1500>펼쳐 보기</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>무시하기</button>
			</div>
		</div>
		<div class="layer-common layer-common--ignore">
			<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer__common-title" style="color:red;">무시하면 안될 것 같다.</h2>
				<p class="layer__common-text" style="color:red;">너무 궁금하다.</p>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
No newline at end of file
