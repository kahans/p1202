<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>내용보기</h1>
	<div>board_no :</div>
	<div>${board.boardNo}</div>
	<div>board_title :</div>
	<div>${board.boardTitle}</div>
	<div>board_content :</div>
	<div>${board.boardContent }</div>
	<div>board_user :</div>
	<div>${board.boardUser}</div>
	
	<div>
		<a
			href="<c:url value='/BoardModify?boardNo=${board.boardNo}'/>">수정</a>
		<a
			href="<c:url value='/BoardRemove?boardNo=${board.boardNo}'/>">삭제</a>
	</div>
</body>
</html>