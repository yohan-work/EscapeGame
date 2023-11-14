<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>불이 켜진 학교 입구다.<br/>
            강의싷, 행정실, 2층,,, 어디부터 가볼까
			</h2>
			<div class="school__btns school__1F__btns">
				<button onclick="location.href='school__07-class.jsp'" data-aos="fade-up" data-aos-duration=1500>강의실</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>행정실</button>
                <button onclick="location.href='school__08-1.jsp'" data-aos="fade-up" data-aos-duration=1500>2층</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--answer">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">행정실이 잠겨있다.</h2>
				<form id="myForm" method="post">
					<input type="text" id="answerInput" name="answer" placeholder="비밀번호 입력" class="layer-common__chk" autocomplete="off">
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
			if (input === "9303") {
				pTag.textContent = "문이 열렸습니다.";
				setTimeout(function(){
					location.href='school__07-administ.jsp';
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