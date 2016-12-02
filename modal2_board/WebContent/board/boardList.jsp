<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}

.w3-third img {
	margin-bottom: -6px;
	opacity: 0.8;
	cursor: pointer
}

.w3-third img:hover {
	opacity: 1
}

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
<body class="w3-light-grey w3-content" style="max-width: 1600px">
	<!-- Sidenav/menu -->
	<nav
		class="w3-sidenav w3-white w3-animate-left w3-center w3-text-grey w3-collapse w3-top"
		style="z-index:3;width:300px;font-weight:bold" id="mySidenav"> <br>
	<h3 class="w3-padding-64">
		<b>SOME<br>NAME
		</b>
	</h3>
	<a href="javascript:void(0)" onclick="w3_close()"
		class="w3-padding w3-hide-large">CLOSE</a> <a
		href="<c:url value='/BoardList'/>" class="w3-padding">MAIN</a> <a
		href="<c:url value='/BoardList'/>" class="w3-padding">LIST</a> <a
		href="#contact" class="w3-padding">CONTACT</a> </nav>
	
	<div class="w3-main" style="margin-left: 300px">
		<div>전체행의 수 : ${totalRowCount} / ${list.size()}</div>
		<table border="1">
			<thead>
				<tr>
					<th>boardTitle</th>
					<th>boardUser</th>
					<th>boardDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="b" items="${list}">
					<tr>
						<td><a
							href="<c:url value='/BoardView?boardNo=${b.getBoardNo()}'/> ">${b.getBoardTitle()}</a></td>
						<td>${b.getBoardUser()}</td>
						<td>${b.getBoardDate()}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

		<div>
			<a href="<%=request.getContextPath()%>/board/boardAddForm.jsp">글입력</a>
		</div>
		<div>
			<c:if test="${currentPage>1 }">
				<a href="<c:url value='/BoardList?currentPage=${currentPage - 1}'/>">이전</a>
			</c:if>
			
			<c:forEach var="b" items="${list}" begin="0" varStatus="status" end="5" >
				
					<a href="">${stats.count}</a>
				
			</c:forEach>
			
			<c:if test="${currentPage<lastPage }">
				<a href="<c:url value='/BoardList?currentPage=${currentPage + 1}'/>">다음</a>
			</c:if>
		</div>

		<footer class="w3-container w3-padding-32 w3-grey">
		<div class="w3-row-padding">
			<div class="w3-third">
				<h3>INFO</h3>
				<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo
					condimentum, porta lectus vitae, ultricies congue gravida diam non
					fringilla.</p>
			</div>

			<div class="w3-third">
				<h3>POPULAR TAGS</h3>
				<p>
					<span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span
						class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New
						York</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">London</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">IKEA</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">NORWAY</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">DIY</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Baby</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Family</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">News</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Clothing</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Shopping</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Sports</span>
					<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Games</span>
				</p>
			</div>
		</div>
		</footer>
		<div class="w3-black w3-center w3-padding-24">
			Powered by <a href="http://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
		</div>
	</div>

</body>
</html>