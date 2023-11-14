<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>모니터가 켜졌다.<br/>
            건물의 1층은 커피숍, 2층은 회사다. 3층은 무엇일까?<br/>
			</h2>
			<br>
			<img src="assets/images/main/monitor.png" alt="MONITOR" class="school__title-img">
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
			</div>
         </div>	
    </div>
	<div class="layer-common layer-common--answer">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">정답을 입력해주세요.</h2>
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
		$(function(){
			$('.layer-common__link').on('click', function(){
				var te = $("#copy").text();

				$('#copyText').attr('type', 'text');
				// input에 담긴 데이터를 선택
				$('#copyText').select();
				
				// clipboard에 데이터 복사
				var copy = document.execCommand('copy');
				
				// input box를 다시 hidden 처리
				$('#copyText').attr('type', 'hidden');

			});
		});
		document.getElementById("myForm").addEventListener("submit", function(event) {
			event.preventDefault();

			var input = document.getElementById("answerInput").value;

			var pTag = document.createElement("p");
			pTag.classList.add('layer-common__answer');

			document.getElementById("myForm").appendChild(pTag);
			if (input === "학교") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='school__07-1.jsp';
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