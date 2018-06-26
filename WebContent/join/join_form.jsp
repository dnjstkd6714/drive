<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!--  28�� �̿��� 2018. 6. 1(��) -->

<!--  �߰� �����ؾ��� ��ɵ� 
 1. id �ߺ�Ȯ��, id�� db�÷� �⺻Ű������ �ߺ��� �־ �ȵ�. ������������ �ؽ�Ʈ �Է� �� �ߺ����� Ȯ���Ͽ� �ߺ��Է� �����ؾ���.
	* submit �����͸� �̵��ؼ� join_pro������ ó���Ҽ� ������, proȭ�鿡�� ó���ϸ� formȭ�鿡���� �Է��س��� �ؽ�Ʈ�� ��� ���ư�...
 2. id ���ڼ� ���� �� Ư������ ���� (6~16�� �̳�)
 3. pw�� pwcheck ����ġ�� ���Է�,���ڼ� ����(6~16���̳�),���ڸ� �Է�����(���̵�� ����,������ϰ� �����Ѱ�� ���Է�)
 	* submit �����͸� �̵��ؼ� join_pro������ ó���Ҽ� ������, proȭ�鿡�� ó���ϸ� formȭ�鿡���� �Է��س��� �ؽ�Ʈ�� ��� ���ư�...
 4. ����Ʈ�ڽ� �����Է� �߰��Ͽ� �����Է� ���ý� �ؽ�Ʈ�ڽ� Ȱ��ȭ(�̸���)
 5. �з¼��ý� �����б��� �ؽ�Ʈ �ڽ� Ȱ��ȭ, �̼��ý� ��Ȱ��ȭ. �����б��� �˻����(ã��,�˻�â�۰�, �˻����) �߰��Ͽ�����. -->
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ��</title>
<link rel="stylesheet" type="text/css"  href="<%= request.getContextPath() %>/css/joinForm.css"/>
</head>
<body>
<!-- ��� ���� -->
<%@include file="../module/header.jsp" %>
<!-- ��� �� -->	
	<h3>ȸ������</h3>
	<h6><span id="required">*</span>�� �ʼ��Է��Դϴ�.</h6>
	<form action="<%= request.getContextPath() %>/join/join_pro.jsp" method="post">
		<ul id="mem_form">
			<li>
				<ul class="cols">
					<li class="col1">���̵�<span id="required">*</span> :</li>
					<li class="col2"><input type="text" name="id" required></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">��й�ȣ<span id="required">*</span> :</li>
					<li class="col2"><input type="password" required name="pw"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">��й�ȣ Ȯ��<span id="required">*</span> :</li>
					<li class="col2"><input type="password" required name="pwcheck"></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�̸�<span id="required">*</span> :</li>
					<li class="col2"><input type="text" name="name" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�������<span id="required">*</span> :</li>
					<li class="col2">
						<input class="birth" type="date" name="birth" style="width:150px;" required>
					 </li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�޴���ȭ<span id="required">*</span> :</li>
					<li class="col2">
					<select name="phoneNumber1" required>
					<option>010</option>
					<option>011</option>
					<option>017</option>
					</select> - 
					<input class="hp" type="text" name="phoneNumber2" required> - <input class="hp" type="text" name="phoneNumber3" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">����ó<span id="required">*</span> :</li>
					<li class="col2">
					<select name="contactAddress1" required>
					<option>02</option>
					<option>031</option>
					<option>032</option>
					<option>033</option>
					<option>041</option>
					<option>042</option>
					<option>043</option>
					<option>044</option>
					<option>051</option>
					<option>052</option>
					<option>053</option>
					<option>054</option>
					<option>055</option>
					<option>061</option>
					<option>062</option>
					<option>063</option>
					<option>064</option>	
					</select> - 
					<input class="hp" type="text" name="contactAddress2" required> - <input class="hp" type="text" name="number3" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�̸���<span id="required">*</span> :</li>
					<li class="col2"><input id="email1" type="text" name="email1" required>
					<select id="email2" name="email2" required>
					<option>����</option>
					<option>@naver.com</option>
					<option>@hanmail.net</option>
					<option>@gmail.com</option>
					</select></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�� ��<span id="required">*</span> :</li>
					<li><input type="text" name="address" style="width:550px;" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">���� :</li>
					<li class="col2">
					<select name="job">
					<option>�л�</option>
					<option>��������</option>
					<option>������</option>
					<option>ȸ���</option>
					<option>�����Ͼ�</option>
					<option>��/������</option>
					<option>�����</option>
					<option>�ڿ���</option>
					<option>�Ƿ��</option>
					<option>������</option>
					<option>������������</option>
					<option>��Ÿ</option>	
					</select>
					</li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�з� :</li>
					<li class="col2">
					<select name="levelOfEducation">
					<option>����б� ����</option>
					<option>������ ����</option>
					<option>������ ����</option>
					<option>���б� ����</option>
					<option>���б� ����</option>
					<option>��Ÿ</option>
					</select>
					</li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1" id="intro">�����б��� :</li>
					<li class="col2">
					<input type="text" name="schoolName"></li>	
				</ul>
	   		</li>
			<li>
				<ul class="cols">
					<li style="margin:10px 0 0 150px"><input type="submit" value="����"></li>
					<li><a href="<%= request.getContextPath() %>/index.jsp"><input type="button" value="�������"></a></li>	
				</ul>
			</li>
	  	</ul>
	</form>
</body>
</html>