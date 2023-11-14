<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="timer">
	<input id="timer__count" class="timer__count" type="text" value="" readonly/>
</div>

<%-- 3 skill --%>
<div class="skill">
	<button class="skill__excel">Change Excel</button>
	<button class="skill__coding">Change Coding</button>
	<a href="#" class="skill__learn">Change Learn</a>
	<button id="" type="button" class="skill__pay">Payment for Premium</button>
</div>
<div class="skill-monitor">
	<div class="skill-monitor__excel">
		<img src="assets/images/main/skill_excel.jpg" alt="excel monitor" />
	</div>
	<div class="skill-monitor__coding">
		<img src="assets/images/main/skill_coding.jpg" alt="coding monitor" />
	</div>
	<div class="skill-monitor__learn">
		<img src="assets/images/main/iclass.jpg" alt="coding monitor" />
	</div>
</div>

<div class="banner">
	<a href="http://rpp.gmarket.co.kr/?exhib=102174" target="_blank">
		<img src="https://image.gmarket.co.kr/hanbando/202305/5728ad7a-a96e-46d8-babe-337dd92ec2ed.png" alt="">
	</a>
	<%-- <a href="https://www.socar.kr/" class="banner__socar" target="_blank">
		<img src="https://www.socar.kr/images/i-appicon.svg" alt="">
	</a> --%>
	<button id="check_module" class="banner__close">광고 없애기</button>
</div>


<script>
	$(function(){
		// location.href='school__02.jsp';
		$("#check_module").click(function () {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp14397622'); 
			// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				/* 
					'kakao':카카오페이, 
					html5_inicis':이니시스(웹표준결제)
						'nice':나이스페이
						'jtnet':제이티넷
						'uplus':LG유플러스
						'danal':다날
						'payco':페이코
						'syrup':시럽페이
						'paypal':페이팔
					*/
				pay_method: 'card',
				/* 
					'samsung':삼성페이, 
					'card':신용카드, 
					'trans':실시간계좌이체,
					'vbank':가상계좌,
					'phone':휴대폰소액결제 
				*/
				merchant_uid: 'merchant_' + new Date().getTime(),
				/* 
					merchant_uid에 경우 
					https://docs.iamport.kr/implementation/payment
					위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
					*/
				name: 'MasterKey Premium',
				//결제창에서 보여질 이름
				amount: 10000,
				//가격 
				buyer_email: 'businessyh0312@gmail.com',
				buyer_name: '마스터키_사용자1',
				buyer_tel: '010-1234-5678',
				buyer_addr: '강남파이낸스센터',
				buyer_postcode: '123-456',
				m_redirect_url: 'https://www.yourdomain.com/payments/complete'
				/*
					모바일 결제시,
					결제가 끝나고 랜딩되는 URL을 지정 
					(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐) 
				*/
			}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = 'Payment Success.';
					// location.href='hint__collection.jsp'
					$('.banner').remove();
					
				} else {
					var msg = 'Payment Failed.';
				}
				alert(msg);
			});
		});


		function toggleSkill(skillClass, monitorClass) {
			var $skill = $('.skill .' + skillClass);
			var $monitor = $('.skill-monitor .' + monitorClass);
			
			$skill.on('click', function(){
				var isActive = $skill.hasClass('active');
				
				if(!isActive){
					$skill.addClass('active');
					$monitor.fadeIn(200);
					$skill.css('color', 'red');
				} else {
					$skill.removeClass('active');
					$monitor.fadeOut(200);
					$skill.css('color', '#fff');
				}
			});
		}

		toggleSkill('skill__excel', 'skill-monitor__excel');
		toggleSkill('skill__coding', 'skill-monitor__coding');
		toggleSkill('skill__learn', 'skill-monitor__learn');


		$(document).keydown(function(e) {
			var keyCode = e.keyCode || e.which;

			var code = e.which ? e.which : e.keyCode;

			if (code == 113) { // f2
				toggleSkill_keydown('.skill__excel', '.skill-monitor__excel', 'red');
			} else if (code == 115) { // f4
				toggleSkill_keydown('.skill__coding', '.skill-monitor__coding', 'red');
			} else if (code == 120) { // f9
				toggleSkill_keydown('.skill__learn', '.skill-monitor__learn', 'red');
			}
		});

		function toggleSkill_keydown(skillClass, monitorClass, color) {
			var $skill = $(skillClass);
			var $monitor = $(monitorClass);

			if (!$skill.hasClass('active')) {
				$skill.addClass('active');
				$monitor.fadeIn(200);
				$skill.css('color', color);
			} else {
				$skill.removeClass('active');
				$monitor.fadeOut(200);
				$skill.css('color', '#fff');
			}
		}
	});
</script>
