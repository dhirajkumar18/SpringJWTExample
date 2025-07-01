package com.dhiraj.springboot.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dhiraj.springboot.security.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
