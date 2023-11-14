<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center" style="padding-top:150px;">
			<img src="assets/images/main/office_add_08.png" alt="" class="school__title-img school__lock-img">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				단서를 통해 자물쇠를 열어주세요.<br /><br />
			</h2>
			<div class="school__btns">
				<button class="layer-click school__mail" data-aos="fade-up" data-aos-duration=1500>?</button>
				<%-- <button class="layer-click school__ignore" data-aos="fade-up" data-aos-duration=1500>정답1</button> --%>
			</div>
			
		</div>
	</div>
		<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">단서를 통해 자물쇠의 번호를 입력해 주세요.<br /> ???</h2>
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

	<script>
		document.getElementById("myForm").addEventListener("submit", function(event) {
			event.preventDefault();

			var input = document.getElementById("answerInput").value;

			var pTag = document.createElement("p");
			pTag.classList.add('layer-common__answer');

			document.getElementById("myForm").appendChild(pTag);
			if (input == "182") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='office_s1.jsp';
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