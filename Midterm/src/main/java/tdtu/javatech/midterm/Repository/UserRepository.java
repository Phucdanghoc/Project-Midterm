package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Role;
import tdtu.javatech.midterm.Model.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    User findByEmail(String email);

    @Override
    void delete(User entity);

    List<User> findAllByRoles(Role role);
}
