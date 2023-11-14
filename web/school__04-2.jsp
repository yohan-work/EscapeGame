<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>복도는 어두워서 보이지 않고, 많은 비가 쏟아져 정신이 없다. <br />
				스터디 라운지를 둘러보던 중 창문 밑으로 낙서가 보인다. <br />
			</h2>
			<div class="school__btns">
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>낙서</button>
				<button onclick="location.href='school__03.jsp'" data-aos="fade-up" data-aos-duration=1500>입구</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--mail">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title" id="copy">“ㄷㅁㄱㄱ”<br /> “⌟ □ ⎜ㄷ” </h2>
				<input type="hidden" id="copyText" value="ㄷㅁㄱㄱ / ⌟ □ ⎜ㄷ">
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
	</script>
<%@ include file="include/footer.jsp" %>