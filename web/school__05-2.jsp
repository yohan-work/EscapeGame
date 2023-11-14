<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
            분전함 내부에는 작은 쪽지가 붙어있고, 퓨즈가 아래와 같이 꽂혀있다.<br/>
            123<br/>
            456<br/>
            하지만 정상적으로 꽂혀있지는 않은 것 같다.아무래도 퓨즈의 위치를 바꿔야할 것 같다.<br/>
            현재 퓨즈는 123456인데… <br/>
			</h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>정답 입력</button>
                <button class="layer-click" data-aos="fade-up" data-aos-duration=1500>쪽지</button>
				<button onclick="location.href='school__05-1.jsp'" data-aos="fade-up" data-aos-duration=1500>지하실</button>
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
	</div>
	<div class="layer-common layer-common-note">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
        <h2 class="layer-common__title" id="copy">[쪽지 획득]</h2>
			<p class="layer-common__title">*퓨즈 매뉴얼*<br/>
                1. 위쪽 퓨즈 숫자 3개의 합은 아래쪽 퓨즈 숫자 3개의 합보다 1 적다.<br/>
                2. 가장 오른쪽 줄의 위, 아래 퓨즈 숫자의 합은 5이다.<br/>
                3. 5번 퓨즈는 4번 퓨즈의 바로 왼쪽이다.<br/>
                4. 1번 퓨즈는 가장 왼쪽 줄에 중에 있다.<br/></p>
			<button class="layer-common__close">
				<img src="assets/images/main/layer__close.png" alt="닫기">
			</button>
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
			if (input === "163542") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='school__06.jsp';
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