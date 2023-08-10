<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>Test-join</h1>
	<form action="${cpath}/register.do" method="post">
	<div class="col-7">
	
		아이디: <input type="text" name="id" class = "form-control" /><button class="btn btn-primary btn-sm" type="button">중복확인</button><br><br>
		비밀번호: <input type="password" name="pw" class="form-control"/><br><br>
		이름: <input type="text" name="name" class="form-control"/><br><br>
		닉네임: <input type="text" name = "nick" class="form-control"/><br><br>
		전화번호: <input type="text" name = "phone" class="form-control" placeholder="010-xxxx-xxxx"/><br><br>
		대학교: <input type="text" name = "univ" class = "form-control"/><br><br>
		소속동아리: <input type="text" name = "circle_from" class = "form-control"/><br><br>
		성향태그: <input type="text" name="preference" class = "form-control" placeholder="#외향, #내향, #집순이"/><br><br>
		지역:<input type="text" name = "region" class="form-control"/><br><br>
		mbti:<select name = mbti class="form-select form-select-sm" aria-label="Small select example">
				 <option selected>MBTI</option>
				 <option value="INTJ">INTJ</option>
				 <option value="INTP">INTP</option>
				 <option value="ENTJ">ENTJ</option>
				 <option value="ENTP">ENTP</option>
				 <option value="ISTJ">ISTJ</option>
				 <option value="ISTP">ISTP</option>
				 <option value="ESTJ">ESTJ</option>
				 <option value="ESTP">ESTP</option>
				 <option value="INFJ">INFJ</option>
				 <option value="INFP">INFP</option>
				 <option value="ENFJ">ENFJ</option>
				 <option value="ENFP">ENFP</option>
				 <option value="ISTP">ISTP</option>
				 <option value="ISTJ">ISTJ</option>
				 <option value="ESTP">ESTP</option>
				 <option value="ESTJ">ESTJ</option>
			</select><br><br>
		생일:<input type="date" name="birthdate">
	</div><br>
		<button class="btn btn-primary btn-sm" type="submit">회원가입</button>
	</form>
</body>
</html>