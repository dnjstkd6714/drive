<!--  28기 이원상 2018. 6. 26(화) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.MemberDao" %>
<%request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="member" class="service.Member"/>
<jsp:setProperty name="member" property="*"/>
<%
	MemberDao MemberDao = new MemberDao();
	MemberDao.insertMember(member);
	
	response.sendRedirect(request.getContextPath()+"/index.jsp");
%>
