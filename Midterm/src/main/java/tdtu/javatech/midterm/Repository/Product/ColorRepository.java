package tdtu.javatech.midterm.Repository.Product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Color;

@Repository
public interface ColorRepository extends JpaRepository<Color,Integer> {
    Color findByColorName(String name);
}
