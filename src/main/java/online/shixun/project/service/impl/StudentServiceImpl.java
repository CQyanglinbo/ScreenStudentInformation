package online.shixun.project.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import online.shixun.project.dao.StudentDao;
import online.shixun.project.model.Student;
import online.shixun.project.model.Student.Gender;
import online.shixun.project.service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDao studentdao;
	@Override
	public List<Student> findStudentByDirection(String direction) {
		return studentdao.findStudentByDirection(direction);
	}

	@Override
	public List<Student> findStudentByGender(Gender gender) {
		return studentdao.findStudentByGender(gender);
	}

	@Override
	public void add(Student student) {
		studentdao.add(student);
	}

	@Override
	public List<Student> findAll() {
		return studentdao.findAll();
	}

}
