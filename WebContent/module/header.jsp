<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>메인페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
</head>
<body>
<!-- 헤더 시작 -->
	<header>
		<div id="logo">
			<a href="<%= request.getContextPath() %>/index.jsp"><img src="<%= request.getContextPath() %>/img/header_logo1.PNG"></a>
		</div>	
		<div id="topmenu">
			<ul>
				<li><a href="<%= request.getContextPath() %>/login/login_form.jsp">로그인 |</a></li>
				<li><a href="<%= request.getContextPath() %>/join/join_form.jsp">회원가입 |</a></li>
				<li>즐겨찾기추가 |</li>
				<li>사이트맵</li>
			</ul>
		</div>
		<nav class="clear">
			<ul>
					<li>
						<a href="<%= request.getContextPath() %>/nav/studyCenter.jsp">학습센터</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/administrativeSupportCenter.jsp">행정지원센터</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/community.jsp">커뮤니티</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/registerForCourses.jsp">수강신청</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/memberList">회원관리(관리자메뉴)</a>
					</li>
			</ul>
		</nav>
	</header>
<!-- 헤더 끝 -->	
</body>
</html>