package service;
import java.sql.*;

public class MemberDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	// 데이터베이스(mydb21lws)내 테이블(member)의 1개 행을 입력하는 메소드
	// 매개변수 1 : service패키지내 Member클래스가 data type이며 매개변수명은 Member클래스를 통해 생성된 객체참조변수의 참조값
	// 리턴 : void
	// Member 클래스 데이터영역의 프로퍼티의 접근지정자는 모두 private이며 String id, String pw, String level, String name, String birth
	// String phoneNumber1, String phoneNumber2, String phoneNumber3, String phoneNumber = phoneNumber1+phoneNumber2+phoneNumber3
	// String contactAddress1, String contactAddress2,String contactAddress = contactAddress1+contactAddress2;
	// String email1, String email2, String email = email1+email2, String address, String job, String levelOfEducation;
	// String schoolName, String joinDate;
	public void insertMember(Member member) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://localhost:3306/mydb21lws?useUnicode=true&characterEncoding=euckr";
		String dbUser = "mydbid21lws";
		String dbPass = "mydbpw21lws";
		connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println(connection+"<--connection");
		String sql = "INSERT INTO member (id, pw, name, dateofbirth, phonenumber, number, email, address, job, levelofeducation, schoolname)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, member.getId());
		preparedStatement.setString(2, member.getPw());
		preparedStatement.setString(3, member.getName());
		preparedStatement.setString(4, member.getBirth());
		preparedStatement.setString(5, member.getPhoneNumber());
		preparedStatement.setString(6, member.getContactAddress());
		preparedStatement.setString(7, member.getEmail());
		preparedStatement.setString(8, member.getAddress());
		preparedStatement.setString(9, member.getJob());
		preparedStatement.setString(10, member.getLevelOfEducation());
		preparedStatement.setString(11, member.getSchoolName());
		
		preparedStatement.executeUpdate();
		
		preparedStatement.close();
		connection.close();
	}
}
