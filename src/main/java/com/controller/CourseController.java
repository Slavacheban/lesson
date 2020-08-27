package com.controller;

import com.controller.dto.Course;
import com.service.CourseService;
import com.transformer.CourseTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseTransformer transformer;
    @Autowired
    private CourseService service;


    @GetMapping("/list")
    public String getCourses(Model model) {
        model.addAttribute("courses", transformer.buildCourses(service.findAll()));
        return "course-list";
    }

    @GetMapping("/create")
    public String createCourseForm(Course course) {
        return "course-create";
    }

    @PostMapping("/create")
    public String createCourse(Course course) {
        service.createCourse(transformer.buildEntity(course));
        return "redirect:/course/list";
    }

    @GetMapping(path = "/delete/{id}")
    public String deleteCourse(@PathVariable(name = "id") Long id) {
        service.deleteCourseById(id);
        return "redirect:/course/list";
    }

    @GetMapping(path = "/update/{id}")
    public String updateCourseForm(@PathVariable(name = "id") Long id, Model model) {
        Course course = transformer.buildCourse(service.findById(id));
        model.addAttribute("course", course);
        return "course-update";
    }

    @PostMapping("/update")
    public String updateCourse(Course course) {
        service.createCourse(transformer.buildEntity(course));
        return "redirect:/course/list";
    }
}
