package service;

public class Member {

	private String id;
	private String pw;
	private String level;
	private String name;
	private String birth;
	private String phoneNumber1;
	private String phoneNumber2;
	private String phoneNumber3;
	private String phoneNumber = phoneNumber1+phoneNumber2+phoneNumber3;
	private String contactAddress1;
	private String contactAddress2;
	private String contactAddress = contactAddress1+contactAddress2;
	private String email1;
	private String email2;
	private String email = email1+email2;	
	private String address;
	private String job;
	private String levelOfEducation;
	private String schoolName;
	private String joinDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
		System.out.println(id+"<--setId");
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
		System.out.println(pw+"<--setPw");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		System.out.println(name+"<--setName");
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
		System.out.println(birth+"<--setBirth");
	}
	public String getPhoneNumber1() {
		return phoneNumber1;
	}
	public void setPhoneNumber1(String phoneNumber1) {
		this.phoneNumber1 = phoneNumber1;
		System.out.println(phoneNumber1+"<--setPhoneNumber1");
	}
	public String getPhoneNumber2() {
		return phoneNumber2;
	}
	public void setPhoneNumber2(String phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
		System.out.println(phoneNumber2+"<--setPhoneNumber2");
	}
	public String getPhoneNumber3() {
		return phoneNumber3;
	}
	public void setPhoneNumber3(String phoneNumber3) {
		this.phoneNumber3 = phoneNumber3;
		System.out.println(phoneNumber3+"<--setPhoneNumber3");
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
		System.out.println(phoneNumber+"<--setPhoneNumber");
	}
	public String getContactAddress1() {
		return contactAddress1;
	}
	public void setContactAddress1(String contactAddress1) {
		this.contactAddress1 = contactAddress1;
		System.out.println(contactAddress1+"<--setContactAddress1");
	}
	public String getContactAddress2() {
		return contactAddress2;
	}
	public void setContactAddress2(String contactAddress2) {
		this.contactAddress2 = contactAddress2;
		System.out.println(contactAddress2+"<--setContactAddress2");
	}
	public String getContactAddress() {
		return contactAddress;
	}
	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
		System.out.println(contactAddress+"<--setContactAddress");
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
		System.out.println(email1+"<--setEmail1");
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
		System.out.println(email2+"<--setEmail2");
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
		System.out.println(email+"<--setEmail");
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
		System.out.println(address+"<--setAddress");
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
		System.out.println(job+"<--setJob");
	}
	public String getLevelOfEducation() {
		return levelOfEducation;
	}
	public void setLevelOfEducation(String levelOfEducation) {
		this.levelOfEducation = levelOfEducation;
		System.out.println(levelOfEducation+"<--setLevelOfEducation");
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
		System.out.println(schoolName+"<--setSchoolName");
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
		System.out.println(level+"<--setLevel");
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
		System.out.println(joinDate+"<--setJoinDate");
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", level=" + level + ", name=" + name + ", birth=" + birth
				+ ", phoneNumber1=" + phoneNumber1 + ", phoneNumber2=" + phoneNumber2 + ", phoneNumber3=" + phoneNumber3
				+ ", phoneNumber=" + phoneNumber + ", contactAddress1=" + contactAddress1 + ", contactAddress2="
				+ contactAddress2 + ", contactAddress=" + contactAddress + ", email1=" + email1 + ", email2=" + email2
				+ ", email=" + email + ", address=" + address + ", job=" + job + ", levelOfEducation="
				+ levelOfEducation + ", schoolName=" + schoolName + ", joinDate=" + joinDate + "]";
	}

	
}
