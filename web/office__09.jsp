<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				<img src="assets/images/main/두꺼비집2.png" alt="두꺼비집" /><br />
				모든 스위치를 올려 전기가 연결되었습니다. <br />
				?를 통해 단서를 획득하세요. <br />
			</h2>
			<br />
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">정답을<br/> 입력해보세요.</h2>
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
				if (input === "18") {
					pTag.textContent = "*정답*";
					setTimeout(function(){
						location.href='office__10.jsp';
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