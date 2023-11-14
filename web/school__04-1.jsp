<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ include file="include/timer.jsp" %>
	<div class="school slide-in">
		<h1 class="school__title">Episode :: School</h1>
		<div class="school__center">
			<h2 class="school__sub-title" data-aos="fade-down" data-aos-duration=1500>
				스터디라운지 문이 자물쇠로 잠겨있다.
			</h2>
			<div class="school__btns">
				<button onclick="location.href='school__04-3.jsp'" data-aos="fade-up" data-aos-duration=1500>자물쇠</button>
				<button onclick="location.href='school__03.jsp'" data-aos="fade-up" data-aos-duration=1500>입구</button>
			</div>
		</div>

	<script>
		document.getElementById("myForm").addEventListener("submit", function(event) {
			event.preventDefault();

			var input = document.getElementById("answerInput").value;

			var pTag = document.createElement("p");
			pTag.classList.add('layer-common__answer');

			document.getElementById("myForm").appendChild(pTag);
			if (input === "자물쇠") {
				pTag.textContent = "*정답*";
				setTimeout(function(){
					location.href='school__05.jsp';
				});
			} else {
				pTag.textContent = "*땡*";
				setTimeout(function(){
					pTag.remove();
				},2000);
			}
		});
	</script>
<%@ include file="include/footer.jsp" %>