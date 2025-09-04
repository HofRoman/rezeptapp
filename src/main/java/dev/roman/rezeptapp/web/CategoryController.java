package dev.roman.rezeptapp.web;

import dev.roman.rezeptapp.domain.Category;
import dev.roman.rezeptapp.repo.CategoryRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class CategoryController {
    private final CategoryRepository repo;
    public CategoryController(CategoryRepository repo) { this.repo = repo; }

    @GetMapping
    public List<Category> all() { return repo.findAll(); }

    @GetMapping("/{id}")
    public Category one(@PathVariable Long id) { return repo.findById(id).orElseThrow(); }
}
