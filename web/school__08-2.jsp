<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>화장실로 들어갔다.<br/>
            볼일을 보고 나오는데 청소도구함 칸에 빨간색 펜으로 무언가 써져있다.<br/>청소도구함 칸은 잠겨있다.<br/>
            <img src="assets/images/main/toilet.png" alt="" style="width:300px"></h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>화장실</button>
			</div>
		</div>
	</div>
    <div class="layer-common layer-common">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">청소도구함 비밀번호는 숫자 4자리입니다.</h2>
				<form id="myForm" method="post">
					<input type="text" id="answerInput" name="answer" placeholder="비밀번호입력" class="layer-common__chk" autocomplete="off">
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
			if (input === "3710") {
				pTag.textContent = "자물쇠가 풀렸습니다";
				setTimeout(function(){
					location.href='school__08-3.jsp';
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