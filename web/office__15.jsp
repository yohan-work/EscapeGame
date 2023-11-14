<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: Office</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				<img src="assets/images/main/office__15-1.png" alt="두꺼비집" /><br />  <!--사진안뜸-->
			</h2>
			<div class="school__btns">
				<button class="toggle__click" data-aos="fade-up" data-aos-duration=1500>스위치 올리기</button>
			</div>
		</div>
	</div>

<script>
	$(function(){
		$('.toggle__click').on('click', function(){
			if($(this).hasClass('active') == false){
				$(this).text('스위치 내리기');
				$('.school__sub-title').find('img').attr('src','assets/images/main/office__15-2.png');
				$(this).addClass('active');
			} else {
				$(this).text('스위치 올리기');
				$('.school__sub-title').find('img').attr('src','assets/images/main/office__15-1.png');
				$(this).removeClass('active');
			}
		});
	});

</script>

<%@ include file="include/footer.jsp" %>