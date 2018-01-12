package online.shixun.project.dao;

import java.util.List;

import online.shixun.project.model.Student;
import online.shixun.project.model.Student.Gender;

public interface StudentDao {
	List<Student> findAll();
	List<Student> findStudentByDirection(String direction);
	List<Student> findStudentByGender(Gender gender);
	void add(Student student);
}
