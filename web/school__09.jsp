<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>화장실을 나오니 사물함이 보인다.<br/>
            행정실 캐비닛에서 발견한 메모지가 생각났다.<br/><br/>
            “locker333”<br/>333번 사물함을 확인해보았다. 비밀번호가 걸려있다.<br/>숫자 3자리이다.<br/></h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>힌트</button>
				<button onclick="location.href='school__08-3.jsp'" data-aos="fade-up" data-aos-duration=1500>화장실</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--answer">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">3자리의 숫자를 입력해주세요.</h2>
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
	</div>
	<div class="layer-common layer-common--hint">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
			<p class="layer-common__title">청소도구함에 있던 청소기록일지를 자세하게 살펴보세요.<br />
            가만보면 O 표시가 숫자로 보일수도…?<br /></p>
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
			if (input === "289") {
				pTag.textContent = "사물함이 열렸습니다.";
				setTimeout(function(){
					location.href='school__09-1.jsp';
				},1000);
			} else {
				pTag.textContent = "사물함이 열리지 않았습니다.";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
<%@ include file="include/footer.jsp" %>