package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Integer> {
    Category findByCategoryName(String name);
}
