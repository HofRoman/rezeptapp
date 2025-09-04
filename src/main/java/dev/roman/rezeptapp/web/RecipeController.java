package dev.roman.rezeptapp.web;

import dev.roman.rezeptapp.domain.Recipe;
import dev.roman.rezeptapp.repo.RecipeRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/recipes")
public class RecipeController {
    private final RecipeRepository repo;
    public RecipeController(RecipeRepository repo) { this.repo = repo; }

    @GetMapping
    public List<Recipe> all() { return repo.findAll(); }

    @GetMapping("/{id}")
    public Recipe one(@PathVariable Long id) { return repo.findById(id).orElseThrow(); }
}
