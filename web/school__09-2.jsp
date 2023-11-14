	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="include/header.jsp" %>
	<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
			미융대 정문 자물쇠는 열쇠로 열 수 있다.<br/>
			근데 다른 열쇠들과 좀 다르다<br/>
			90º 방향으로만 회전하고 문 옆에는 도형이 그려져 있는 작은 종이가 붙어있다.<br/>
			열쇠를 어떻게 돌려야 열리는걸까?<br/>
			</h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>종이 확인하기</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>힌트</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--answer">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<img src="assets/images/main/key.png" alt="자물쇠 모양">
				<div class="school__btns">
					<button class="btns-data">L</button>
					<button class="btns-data">R</button>
				</div>
				<h2 class="layer-common__title">버튼을 클릭하여 정답을 입력해주세요.</h2>
				<form id="myForm" method="post">
					<input type="text" id="answerInput" name="answer" placeholder="정답입력" class="layer-common__chk" autocomplete="off">
					<input type="submit" class="layer-common__submit">
				</form>
				<div class="school__btns">
					<button id="resetButton" class="btns-reset">Reset</button>
				</div>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
	</div>
	<div class="layer-common layer-common--hint">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
			<img src="assets/images/main/key.png" alt="자물쇠 모양">
			<button class="layer-common__close">
				<img src="assets/images/main/layer__close.png" alt="닫기">
			</button>
		</div>
	</div>
	<div class="layer-common layer-common--hint">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
			<p class="layer-common__title">열쇠 구멍 시작점에서 그림대로 움직여보세요.</p>
			<button class="layer-common__close">
				<img src="assets/images/main/layer__close.png" alt="닫기">
			</button>
		</div>
	</div>

	<script>
		const buttons = document.querySelectorAll('.btns-data');
		const resetButton = document.getElementById('resetButton');
		const answerInput = document.getElementById('answerInput');
		const myForm = document.getElementById('myForm');

		buttons.forEach(button => {
			button.addEventListener('click', () => {
				answerInput.value += button.textContent;
				answerInput.focus();
			});
		});

		resetButton.addEventListener('click', () => {
			answerInput.value = '';
		});

		myForm.addEventListener('submit', (e) => {
			e.preventDefault();
		});

		document.getElementById("myForm").addEventListener("submit", function(event) {
			event.preventDefault();

			var input = document.getElementById("answerInput").value;

			var pTag = document.createElement("p");
			pTag.classList.add('layer-common__answer');

			document.getElementById("myForm").appendChild(pTag);
			if (input === "RLLRRR") {
				pTag.textContent = "자물쇠가 풀렸습니다.";
				setTimeout(function(){
					location.href='school__10.jsp';
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