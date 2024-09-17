package com.blogsystem.service;

import com.blogsystem.model.Blog;
import com.blogsystem.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BlogService {

    @Autowired
    private BlogRepository blogRepository;

    // Retrieve all blogs
    public List<Blog> findAll() {
        return blogRepository.findAll();
    }

    // Find a blog by its ID
    public Blog findById(String id) {
        Optional<Blog> blog = blogRepository.findById(id);
        return blog.orElse(null);
    }

    // Save or update a blog
    public Blog save(Blog blog) {
        return blogRepository.save(blog);
    }

    // Delete a blog by its ID
    public void deleteById(String id) {
        blogRepository.deleteById(id);
    }
}
