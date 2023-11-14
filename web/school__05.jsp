<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>자물쇠를 풀고 복도로 나왔다. 학교 내부는 어둠이 짙게 깔려있다.<br />
				지하실, 1층, 2층,,, 어디부터 가볼까..? <br />
			</h2>
			<div class="school__btns">
				<button onclick="location.href='school__05-1.jsp'" data-aos="fade-up" data-aos-duration=1500>지하실</button>
				<button class="layer-click" data-aos="fade-up" data-aos-duration=1500>1층</button>
                <button class="layer-click" data-aos="fade-up" data-aos-duration=1500>2층</button>
                <button class="layer-click" data-aos="fade-up" data-aos-duration=1500>불 켜기</button>
			</div>
		</div>
	</div>
	<div class="layer-common layer-common--1F">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title" id="copy">지금 불이 켜지지 않는다. 학교 내부에 전기가 통하지 않는 것 같다.</h2>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
    	<div class="layer-common layer-common--2F">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title" id="copy">지금 불이 켜지지 않는다. 학교 내부에 전기가 통하지 않는 것 같다.</h2>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
    	<div class="layer-common layer-common--lighton">
		<div class="layer-common__dimmed"></div>
			<div class="layer-common__box">
				<h2 class="layer-common__title" id="copy">지금 불이 켜지지 않는다. 학교 내부에 전기가 통하지 않는 것 같다.</h2>
				<button class="layer-common__close">
					<img src="assets/images/main/layer__close.png" alt="닫기">
				</button>
			</div>
		</div>
	</div>
	
<%@ include file="include/footer.jsp" %>