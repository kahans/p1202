<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/BoardModify" method="post">
        <div>boardNo</div>
        <div><input name="boardNo" value="${board.getBoardNo() }" type="text" readonly="readonly"/></div>
        <div>��й�ȣȮ��: </div>
        <div><input name="boardPw" id="boardPw" type="password"/></div>
        <div>boardTitle : </div>
        <div><input name="boardTitle" value="${board.getBoardTitle() }" id="boardTitle" type="text"/></div>
        <div>boardContent : </div>
        <div><textarea name="boardContent" id="boardContent" rows="5" cols="50">${ board.getBoardContent()}</textarea></div>
        <div>
            <input type="submit" value="�ۼ���"/>
            <input type="reset" value="�ʱ�ȭ"/>
        </div>
    </form>
</body>
</html>