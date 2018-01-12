package online.shixun.project.service;

import java.util.List;

import online.shixun.project.model.Student;
import online.shixun.project.model.Student.Gender;

public interface StudentService {
	List<Student> findAll();
	List<Student> findStudentByDirection(String direction);
	List<Student> findStudentByGender(Gender gender);
	void add(Student student);
}
