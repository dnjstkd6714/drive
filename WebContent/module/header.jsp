<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����������</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
</head>
<body>
<!-- ��� ���� -->
	<header>
		<div id="logo">
			<a href="<%= request.getContextPath() %>/index.jsp"><img src="<%= request.getContextPath() %>/img/header_logo1.PNG"></a>
		</div>	
		<div id="topmenu">
			<ul>
				<li><a href="<%= request.getContextPath() %>/login/login_form.jsp">�α��� |</a></li>
				<li><a href="<%= request.getContextPath() %>/join/join_form.jsp">ȸ������ |</a></li>
				<li>���ã���߰� |</li>
				<li>����Ʈ��</li>
			</ul>
		</div>
		<nav class="clear">
			<ul>
					<li>
						<a href="<%= request.getContextPath() %>/nav/studyCenter.jsp">�н�����</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/administrativeSupportCenter.jsp">������������</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/community.jsp">Ŀ�´�Ƽ</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/registerForCourses.jsp">������û</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/nav/memberList">ȸ������(�����ڸ޴�)</a>
					</li>
			</ul>
		</nav>
	</header>
<!-- ��� �� -->	
</body>
</html>