package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

    User findByEmailAndPassword(String email,String password);
}
