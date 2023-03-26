package tdtu.javatech.midterm.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Color;

@Repository
public interface ColorRepository extends CrudRepository<Color,Integer> {
}
