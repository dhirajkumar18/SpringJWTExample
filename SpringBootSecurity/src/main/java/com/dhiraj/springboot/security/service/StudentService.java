package com.dhiraj.springboot.security.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dhiraj.springboot.security.entity.Student;
import com.dhiraj.springboot.security.repository.StudentRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

@Service
public class StudentService {
    private final StudentRepository repo;

    public StudentService(StudentRepository repo) {
        this.repo = repo;
    }
    
    public Page<Student> getPaginatedStudents(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return repo.findAll(pageable);
    }
    
    public List<Student> findAll() {
        return repo.findAll();
    }

    public Student save(Student s) {
        return repo.save(s);
    }

    public Student findById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void deleteById(Long id) {
        repo.deleteById(id);
    }
}