<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>불이 켜진 강의실 안에는<br/>
            큰 모니터가 보이고, 책상 위에는 리모컨이 놓여있다.
			</h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>모니터</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>리모컨</button>
                <button onclick="location.href='school__07.jsp'" data-aos="fade-up" data-aos-duration=1500>1층</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title">꺼져있다. 켤 방법이 있을까?</h2>
				<form id="myForm" method="post">
					<input type="text" id="answerInput" name="answer" placeholder="키워드입력" class="layer-common__chk" autocomplete="off">
					<input type="submit" class="layer-common__submit">
				</form>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
	</div>
	<div class="layer-common layer-common-control">
		<div class="layer-common__dimmed"></div>
		<div class="layer-common__box">
        <h2 class="layer-common__title" id="copy">[리모컨 획득]</h2>
			<p class="layer-common__title">리모컨으로 모니터를 켤 수 있지 않을까?<br/> 
				※ “사용할 아이템 >> 알아낼 키워드” 처럼 입력해보세요<br/></p>
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
			if (input === "리모컨>>모니터") {
				pTag.textContent = "모니터가 켜졌습니다";
				setTimeout(function(){
					location.href='school__07-monitor.jsp';
				},1000);
			} else {
				pTag.textContent = "모니터가 켜지지 않았습니다. 다른 키워드를 사용해보세요.";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
<%@ include file="include/footer.jsp" %>