package com.blogsystem.controller;
import com.blogsystem.model.Blog;
import com.blogsystem.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/blogs")
public class BlogController {

    @Autowired
    private BlogService blogService;


    @GetMapping
    public String listBlogs(Model model) {
        List<Blog> blogs = blogService.findAll();
        model.addAttribute("blogs", blogs);
        return "blogs";
    }

    @GetMapping("/create")
    public String createBlogForm(Model model) {
        model.addAttribute("blog", new Blog());
        return "create-blog";
    }

    @PostMapping("/create")
    public String createBlog(@ModelAttribute Blog blog) {
        blogService.save(blog);
        return "redirect:/blogs";
    }

    @GetMapping("/edit/{id}")
    public String editBlogForm(@PathVariable("id") String id, Model model) {
        Blog blog = blogService.findById(id);
        model.addAttribute("blog", blog);
        return "edit-blog";
    }

    @PostMapping("/edit")
    public String updateBlog(@ModelAttribute Blog blog) {
        blogService.save(blog);
        return "redirect:/blogs";
    }

    @GetMapping("/delete/{id}")
    public String deleteBlog(@PathVariable("id") String id) {
        blogService.deleteById(id);
        return "redirect:/blogs";
    }
}
