<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!--  28기 이원상 2018. 6. 1(금) -->

<!--  추가 구현해야할 기능들 
 1. id 중복확인, id는 db컬럼 기본키값으로 중복이 있어선 안됨. 가입페이지서 텍스트 입력 시 중복여부 확인하여 중복입력 제한해야함.
	* submit 데이터를 이동해서 join_pro에서는 처리할수 있으나, pro화면에서 처리하면 form화면에서의 입력해놓은 텍스트가 모두 날아감...
 2. id 글자수 제한 및 특수문자 제한 (6~16자 이내)
 3. pw와 pwcheck 불일치시 재입력,글자수 제한(6~16자이내),글자명 입력제한(아이디와 동일,생년월일과 동일한경우 재입력)
 	* submit 데이터를 이동해서 join_pro에서는 처리할수 있으나, pro화면에서 처리하면 form화면에서의 입력해놓은 텍스트가 모두 날아감...
 4. 셀렉트박스 직접입력 추가하여 직접입력 선택시 텍스트박스 활성화(이메일)
 5. 학력선택시 최종학교명 텍스트 박스 활성화, 미선택시 비활성화. 최종학교명 검색기능(찾기,검색창작게, 검색기능) 추가하여야함. -->
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 폼</title>
<link rel="stylesheet" type="text/css"  href="<%= request.getContextPath() %>/css/joinForm.css"/>
</head>
<body>
<!-- 헤더 시작 -->
<%@include file="../module/header.jsp" %>
<!-- 헤더 끝 -->	
	<h3>회원가입</h3>
	<h6><span id="required">*</span>은 필수입력입니다.</h6>
	<form action="<%= request.getContextPath() %>/join/join_pro.jsp" method="post">
		<ul id="mem_form">
			<li>
				<ul class="cols">
					<li class="col1">아이디<span id="required">*</span> :</li>
					<li class="col2"><input type="text" name="id" required></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">비밀번호<span id="required">*</span> :</li>
					<li class="col2"><input type="password" required name="pw"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">비밀번호 확인<span id="required">*</span> :</li>
					<li class="col2"><input type="password" required name="pwcheck"></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">이름<span id="required">*</span> :</li>
					<li class="col2"><input type="text" name="name" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">생년월일<span id="required">*</span> :</li>
					<li class="col2">
						<input class="birth" type="date" name="birth" style="width:150px;" required>
					 </li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">휴대전화<span id="required">*</span> :</li>
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
					<li class="col1">연락처<span id="required">*</span> :</li>
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
					<li class="col1">이메일<span id="required">*</span> :</li>
					<li class="col2"><input id="email1" type="text" name="email1" required>
					<select id="email2" name="email2" required>
					<option>선택</option>
					<option>@naver.com</option>
					<option>@hanmail.net</option>
					<option>@gmail.com</option>
					</select></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">주 소<span id="required">*</span> :</li>
					<li><input type="text" name="address" style="width:550px;" required></li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">직업 :</li>
					<li class="col2">
					<select name="job">
					<option>학생</option>
					<option>프리랜서</option>
					<option>공무원</option>
					<option>회사원</option>
					<option>엔지니어</option>
					<option>군/군무원</option>
					<option>유통업</option>
					<option>자영업</option>
					<option>의료업</option>
					<option>전문직</option>
					<option>교육직공무원</option>
					<option>기타</option>	
					</select>
					</li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">학력 :</li>
					<li class="col2">
					<select name="levelOfEducation">
					<option>고등학교 졸업</option>
					<option>전문대 재학</option>
					<option>전문대 졸업</option>
					<option>대학교 재학</option>
					<option>대학교 졸업</option>
					<option>기타</option>
					</select>
					</li>	
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1" id="intro">최종학교명 :</li>
					<li class="col2">
					<input type="text" name="schoolName"></li>	
				</ul>
	   		</li>
			<li>
				<ul class="cols">
					<li style="margin:10px 0 0 150px"><input type="submit" value="가입"></li>
					<li><a href="<%= request.getContextPath() %>/index.jsp"><input type="button" value="가입취소"></a></li>	
				</ul>
			</li>
	  	</ul>
	</form>
</body>
</html>