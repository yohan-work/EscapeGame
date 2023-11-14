<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				스터디라운지 문이 자물쇠로 잠겨있다.
			</h2>
			<div class="school__btns">
				<button class="layer-click school__mail" data-aos="fade-up" data-aos-duration=1500>?</button>
				<button onclick="location.href='school_03.jsp'" data-aos="fade-up" data-aos-duration=1500>입구</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">“?” 키워드는 지문에 숨겨져 있다는 것을 명심하세요. <br/> 그렇다면 이번 “?” 키워드는 무엇일까요?</h2>
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
			if (input === "자물쇠") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='school__05.jsp';
				});
			} else {
				pTag.textContent = "*땡*";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
<%@ include file="include/footer.jsp" %>