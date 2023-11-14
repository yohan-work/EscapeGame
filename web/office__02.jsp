<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				야근하다 그만 잠이들었는데 <br />
				눈떠보니 어느새 새벽 1시. <br />
				모든 불은 꺼져 있고 <br />
				머리 맡에 놓인 메모 한 장. <br />
			</h2>
			<div class="school__btns">
				<button class="layer-click school__mail" data-aos="fade-up" data-aos-duration=1500>[메모]</button>
				<%-- <button class="layer-click school__ignore" data-aos="fade-up" data-aos-duration=1500>정답1</button> --%>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<img src="assets\images\main\0317.jpg" / style="width:400px;">           <!-- 이미지 왜 안될까요 ?-->
				<h2 class="layer-common__title">지금부터 회사 밖으로 그냥 나갈 수 없습니다.<br/> 
					마스터키를 찾아 퇴근할 수 있습니다.<br/>
					먼저 이 쪽으로 오세요.<br/>
					:  ?호 </h2>
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
			if (input === "0317") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='office__03.jsp';
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