<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<img src="assets/images/main/office_add_03.png" alt="" data-aos="fade-down" data-aos-duration=1500 class="school__title-img">
			<div class="school__btns">
				<button class="layer-click school__mail" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
				<%-- <button class="layer-click school__ignore" data-aos="fade-up" data-aos-duration=1500>정답1</button> --%>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">회식 메뉴를<br/> 입력하세요.</h2>
				<form id="myForm" method="post">
					<input type="text" id="answerInput" name="answer" placeholder="정답입력" class="layer-common__chk" autocomplete="off">
					<input type="submit" class="layer-common__submit">
				</form>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--ignore">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
			<h2 class="layer-common__title">??</h2>
			<form id="myForm" method="post">
				<input type="text" id="answerInput" name="answer" placeholder="정답입력" class="layer-common__chk" autocomplete="off">
				<input type="submit" class="layer-common__submit">
			</form>
			<button class="layer-common__close">
				<img src="assets/images/main/layer__close.png" alt="닫기">
			</button>
		</div>
	</div>

	<script>
		document.getElementById("myForm").addEventListener("submit", function(event) {
			event.preventDefault();

			var input = document.getElementById("answerInput").value;

			var pTag = document.createElement("p");
			pTag.classList.add('layer-common__answer');

			document.getElementById("myForm").appendChild(pTag);
			if (input === "한우") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='office_s5.jsp';
				},1000);
			} else {
				pTag.textContent = "*땡*";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
<%@ include file="include/footer.jsp" %>