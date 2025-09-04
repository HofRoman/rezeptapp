package dev.roman.rezeptapp.repo;

import dev.roman.rezeptapp.domain.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecipeRepository extends JpaRepository<Recipe, Long> { }
