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

<form action="<c:url value='/BoardRemove'/>" method="post">
        <input name="boardNo" value="${param.boardNo}" type="hidden"/>
        <div>��й�ȣȮ�� :</div>
        <div><input name="boardPw" type="password"></div>
        <div>
            <input type="submit" value="����"/>
            <input type="reset" value="�ʱ�ȭ"/>
        </div>
    </form>
</body>
</html>