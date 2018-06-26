<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date" %>					<!-- �ð������ ���� �ڹ� util��Ű�� dateŬ���� ����Ʈ -->
<%@ page import="java.text.SimpleDateFormat" %>		<!-- ��¹�� ������ ���� �ڹ� text��Ű�� SimpleDateFormatŬ���� ����Ʈ -->
<!--  28�� �̿��� 2018. 6. 1(��) -->
<%
/* 	db�� java ������ Ȱ���Ͽ� ����ð��� �ִ� �ѱ�� ��  1. */
	Date today = new Date();											// date Ŭ���� ��ü�������� ����,����,�Ҵ�
	System.out.println(today);
																		// ��¹���� �ٲ��ش�. 
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");			// mysql �÷� datetime���Ŀ� �°Բ� ����
	SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");			// hh�ҹ��ڽ� 12�ñ��� HH 24�ñ���
	System.out.println("Date: "+date.format(today));
    System.out.println("Time: "+time.format(today));
    
    String tdate = date.format(today);									// ������ ?�� �ֱ� ���� �ٸ� �޼ҵ带 ������ ����
	String ttime = time.format(today);									// sql ������ ?�� �����ϸ��.
    System.out.println(tdate+" "+ttime);
	   
	request.setCharacterEncoding("euc-kr");
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwcheck = request.getParameter("pwcheck");
	if(!pw.equals(pwcheck)){
%>
<script type="text/javascript">
	alert('�Է��� ��й�ȣ�� �ٸ��ϴ�.');
	location.href='<%= request.getContextPath()%>/join/join_form.jsp';
</script>
<%
}
%>
<%	
	String name = request.getParameter("name");
	String birth1 = request.getParameter("birth1");
	String birth2 = request.getParameter("birth2");
	String birth3 = request.getParameter("birth3");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String number1 = request.getParameter("number1");
	String number2 = request.getParameter("number2");
	String number3 = request.getParameter("number3");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String addr = request.getParameter("addr");
	String job = request.getParameter("job");
	String levelofeducation = request.getParameter("levelofeducation");
	String schoolname = request.getParameter("schoolname");
/* join_form �� �޾ƿ��� üũ �Ϸ�	
	System.out.println(id + "<-- id /join/joing_pro.jsp");
	System.out.println(pw + "<-- pw /join/joing_pro.jsp");
	System.out.println(pwcheck + "<-- pwcheck /join/joing_pro.jsp");
	System.out.println(name + "<-- name /join/joing_pro.jsp");
	System.out.println(birth1 + "<-- birth1 /join/joing_pro.jsp");
	System.out.println(birth2 + "<-- birth2 /join/joing_pro.jsp");
	System.out.println(birth3 + "<-- birth3 /join/joing_pro.jsp");
	System.out.println(phone1 + "<-- phone1 /join/joing_pro.jsp");
	System.out.println(phone2 + "<-- phone2 /join/joing_pro.jsp");
	System.out.println(phone3 + "<-- phone3 /join/joing_pro.jsp");
	System.out.println(number1 + "<-- number1 /join/joing_pro.jsp");
	System.out.println(number2 + "<-- number2 /join/joing_pro.jsp");
	System.out.println(number3 + "<-- number3 /join/joing_pro.jsp");
	System.out.println(email1 + "<-- email1 /join/joing_pro.jsp");
	System.out.println(email2 + "<-- email2 /join/joing_pro.jsp");
	System.out.println(addr + "<-- addr /join/joing_pro.jsp");
	System.out.println(job + "<-- job /join/joing_pro.jsp");
	System.out.println(levelofeducation + "<-- levelofeducation /join/joing_pro.jsp");
	System.out.println(schoolname + "<-- schoolname /join/joing_pro.jsp");
*/
	Class.forName("com.mysql.jdbc.Driver");	
try{
	String DriverUrl = "jdbc:mysql://localhost:3306/mydb21lws?useUnicode=true&characterEncoding=euckr";
	String dbUser = "mydbid21lws";
	String dbPass = "mydbpw21lws";
	
	conn = DriverManager.getConnection(DriverUrl, dbUser, dbPass);
/* 	System.out.println(conn + "<-- conn");	 */
	pstmt = conn.prepareStatement("select * from member where id=?");
	System.out.println(pstmt + "<-- pstmt 1");
	
	pstmt.setString(1, id);
	
	rs = pstmt.executeQuery();
	System.out.println(pstmt + "<-- pstmt 1");
	
	if(rs.next()){
%>
<script type="text/javascript">
	alert('�ߺ��� ���̵� �ֽ��ϴ�.');
	location.href='<%= request.getContextPath()%>/join/join_form.jsp';
</script>
<%
	}else{
	pstmt2 = conn.prepareStatement
			("insert into member (id,pw,name,dateofbirth,phonenumber,number,email,address,job,levelofeducation,schoolname,joindate)"+
			"values(?,?,?,?,?,?,?,?,?,?,?,now());");
	System.out.println(pstmt2 + "<-- pstmt 2");
	pstmt2.setString(1, id);
	pstmt2.setString(2, pw);
	pstmt2.setString(3, name);
	pstmt2.setString(4, birth1+birth2+birth3);
	pstmt2.setString(5, phone1+phone2+phone3);
	pstmt2.setString(6, number1+number2+number3);
	pstmt2.setString(7, email1+email2);
	pstmt2.setString(8, addr);
	pstmt2.setString(9, job);
	pstmt2.setString(10, levelofeducation);
	pstmt2.setString(11, schoolname);
/* 	pstmt2.setString(12, tdate+" "+ttime); */	
	pstmt2.executeUpdate();
	System.out.println(pstmt2 + "<-- pstmt 2");
%>	
<script type="text/javascript">
	alert('ȸ�����Կ� �����Ͽ����ϴ�.');
	location.href='<%= request.getContextPath()%>/index.jsp';
</script>
<%	
	}
%>

<%	
}finally{
	//06�ܰ� :statement �Ǵ� prepareStatement��ü ����(close())
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	//07�ܰ� :Connection ��ü ����(close())
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}

	


%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	</body>
</html>