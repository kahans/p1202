<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>BOARD ADD</h1>
	<form action="<%=request.getContextPath()%>/BoardAdd" method="post">
		<div>boardPw: </div>
		<div><input name="boardPw" id="boardPw" type="password"> </div>
		<div>boardTitle: </div>
		<div><input name="boardTitle" id="boardTitle" type="text"> </div>
		<div>boardContents: </div>
		<textarea rows="5" cols="40" name="boardContent" id="boardContent" ></textarea>
		<div>boardUser: </div>
		<div><input name="boardUser" id="boardUser" type="text"> </div>
		<div>
			<input type="submit" value="���Է�"/><!-- form�� �ѷ��ΰ� �ִ� ���� �׼����� �ѱ��. -->
			<input type="reset" value="�ʱ�ȭ"/>	<!-- form�� �ѷ��ΰ� �ִ� ���� �ʱ�ȭ��Ų��. -->
		</div>
	</form>
</body>
</html>