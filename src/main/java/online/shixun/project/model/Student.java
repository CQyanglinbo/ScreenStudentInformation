package online.shixun.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;


import javax.persistence.Id;;

@Entity
@Table(name="t_student")
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "studentNo")
	private int studentNo;

	@Column(name = "studentName")
	private String studentName;

	// 性别(枚举)
	public enum Gender {
		男, 女;
	}

	// 用户性别(不为空)
	@Column(nullable = false)
	@Enumerated(EnumType.ORDINAL)
	private Gender gender = Gender.男;
	
	@Column(name = "profession")
	private String profession;
	
	@Column(name = "direction")
	private String direction;
	
	@Column(name = "skill")
	private int skill;
	
	@Column(name = "ability")
	private int ability;
	
	
	public Student() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public int getSkill() {
		return skill;
	}

	public void setSkill(int skill) {
		this.skill = skill;
	}

	public int getAbility() {
		return ability;
	}

	public void setAbility(int ability) {
		this.ability = ability;
	}
	
	
}
