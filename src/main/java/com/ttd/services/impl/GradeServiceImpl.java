/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ttd.services.impl;

import com.ttd.pojo.Course;
import com.ttd.repositories.CourseRepository;
import com.ttd.repositories.GradeRepository;
import com.ttd.services.CourseService;
import com.ttd.services.GradeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author DELL
 */
@Service
public class GradeServiceImpl implements GradeService {
    
    @Autowired
    private GradeRepository gradeRepository;

    @Override
    public List<Object> getGradesByCourseId(int courseId) {
        return this.gradeRepository.getGradesByCourseId(courseId);
    }
    
}