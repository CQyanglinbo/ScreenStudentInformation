package online.shixun.project.dao.impl;

import java.util.ArrayList;
import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.shixun.project.dao.StudentDao;
import online.shixun.project.model.Student;
import online.shixun.project.model.Student.Gender;

@Repository
public class StudentDaoImpl implements StudentDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	
	public List<Student> findAll() {
		List<Student> students=new ArrayList<Student>();
		students=sessionFactory.getCurrentSession().createQuery("From Student")
				.list();
		return students;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findStudentByDirection(String direction) {
		List<Student> students=new ArrayList<Student>();
		students=sessionFactory.getCurrentSession().createQuery("From Student where direction=?")
				.setParameter(0, direction).list();
		return students;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findStudentByGender(Gender gender) {
		List<Student> students=new ArrayList<Student>();
		students=sessionFactory.getCurrentSession().createQuery("From Student where gender=?")
				.setParameter(0, gender).list();
		return students;
	}
	@Override
	public void add(Student student) {
		sessionFactory.getCurrentSession().saveOrUpdate(student);	
	}
	
	
	
}
