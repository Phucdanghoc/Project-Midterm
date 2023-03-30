package tdtu.javatech.midterm.Repository.Action;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart,Integer> {

}
