package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Model.User;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart,Integer> {
    List<Cart> findAllByUser(User user);
}
