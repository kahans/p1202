<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom:-6px;opacity:0.8;cursor:pointer}
.w3-third img:hover{opacity:1}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-white w3-animate-left w3-center w3-text-grey w3-collapse w3-top"
		style="z-index:3;width:300px;font-weight:bold" id="mySidenav">
		<br>
		<h3 class="w3-padding-64">
			<b>SOME<br>NAME
			</b>
		</h3>
		<a href="javascript:void(0)" onclick="w3_close()" class="w3-padding w3-hide-large">CLOSE</a>
		<a href="<c:url value=''/>"	class="w3-padding">MAIN</a>
		<a href="<c:url value=''/>" class="w3-padding">LIST</a>
		<a href="#contact" class="w3-padding">CONTACT</a>
	</nav>
	<div class="w3-main" style="margin-left:300px">
		<h1>글 수정</h1>
		<form action="<%=request.getContextPath()%>/BoardModify" method="post">
	        <div>boardNo</div>
	        <div><input name="boardNo" value="${board.getBoardNo() }" type="text" readonly="readonly"/></div>
	        <div>비밀번호확인: </div>
	        <div><input name="boardPw" id="boardPw" type="password"/></div>
	        <div>boardTitle : </div>
	        <div><input name="boardTitle" value="${board.getBoardTitle() }" id="boardTitle" type="text"/></div>
	        <div>boardContent : </div>
	        <div><textarea name="boardContent" id="boardContent" rows="5" cols="50">${ board.getBoardContent()}</textarea></div>
	        <div>
	            <input type="submit" value="글수정"/>
	            <input type="reset" value="초기화"/>
	        </div>
	    </form>
    </div>
</body>
</html>