package tdtu.javatech.midterm.Repository.Person;

import org.springframework.data.jpa.repository.JpaRepository;
import tdtu.javatech.midterm.Model.User;

public interface UserRepository extends JpaRepository<User,Integer> {
    User findByEmail(String email);
}
