<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>행정실 입구엔 큰 프린터기가 있고, 한쪽 벽에는 캐비닛이 있다.
			</h2>
			<div class="school__btns">
				<button onclick="location.href='school__07-printer.jsp'" data-aos="fade-up" data-aos-duration=1500>프린터</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>캐비넷</button>
                <button onclick="location.href='school__08.jsp'" data-aos="fade-up" data-aos-duration=1500>1층</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--1F">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title" id="copy">캐비넷 안에서 무언가 적힌<br/> 메모지를 발견했다.<br/>일단 가지고 있어야겠다.<br/>
                
				<img src="assets/images/main/memo.png" alt=""></h2>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
<%@ include file="include/footer.jsp" %>