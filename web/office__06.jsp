<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
<div class="school slide-in">
	<h1 class="school__title">Episode :: Office</h1>
	<div class="school__center">
		<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
			&lt;종이&gt; <br />
			<strong>- 0317호 탈출 설명서 -</strong> <br />
		</h2>
		<div class="school__btns">
			<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>종이보기</button>
			<button onclick="location.href='office__04.jsp'" data-aos="fade-up" data-aos-duration=1500>이전</button>
		</div>
	</div>
	<div class="layer-common layer-common--paper">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title"><strong>- 0317호 탈출 설명서 -</strong> <br />
					금고 자물쇠를 열어 마스터키를 가지고 탈출할 수 있습니다. <br />
					단서를 찾아 금고 자물쇠를 해체하세요. <br />
					아, 문제를 풀기 전에 먼저 정전을 해결하세요. <br />
					"ㄷㄲㅂㅈ" <br />
				</h2>
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
			if (input === "두꺼비집") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='office__08.jsp';
				},1000);
			} else {
				pTag.textContent = "*땡*";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
</div>

<%@ include file="include/footer.jsp" %>