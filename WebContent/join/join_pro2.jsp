<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date" %>					<!-- 시간출력을 위한 자바 util패키지 date클래스 임포트 -->
<%@ page import="java.text.SimpleDateFormat" %>		<!-- 출력방법 설정을 위한 자바 text패키지 SimpleDateFormat클래스 임포트 -->
<!--  28기 이원상 2018. 6. 1(금) -->
<%
/* 	db에 java 문법을 활용하여 현재시간을 넣는 넘기는 법  1. */
	Date today = new Date();											// date 클래스 객체참조변수 선언,대입,할당
	System.out.println(today);
																		// 출력방법을 바꿔준다. 
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");			// mysql 컬럼 datetime형식에 맞게끔 수정
	SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");			// hh소문자시 12시기준 HH 24시기준
	System.out.println("Date: "+date.format(today));
    System.out.println("Time: "+time.format(today));
    
    String tdate = date.format(today);									// 쿼리문 ?에 넣기 위해 다른 메소드를 변수로 선언
	String ttime = time.format(today);									// sql 쿼리문 ?에 대입하면됨.
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
	alert('입력한 비밀번호가 다릅니다.');
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
/* join_form 값 받아오기 체크 완료	
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
	alert('중복된 아이디가 있습니다.');
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
	alert('회원가입에 성공하였습니다.');
	location.href='<%= request.getContextPath()%>/index.jsp';
</script>
<%	
	}
%>

<%	
}finally{
	//06단계 :statement 또는 prepareStatement객체 종료(close())
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	//07단계 :Connection 객체 종료(close())
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