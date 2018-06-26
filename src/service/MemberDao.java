package service;
import java.sql.*;

public class MemberDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	// �����ͺ��̽�(mydb21lws)�� ���̺�(member)�� 1�� ���� �Է��ϴ� �޼ҵ�
	// �Ű����� 1 : service��Ű���� MemberŬ������ data type�̸� �Ű��������� MemberŬ������ ���� ������ ��ü���������� ������
	// ���� : void
	// Member Ŭ���� �����Ϳ����� ������Ƽ�� ���������ڴ� ��� private�̸� String id, String pw, String level, String name, String birth
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
