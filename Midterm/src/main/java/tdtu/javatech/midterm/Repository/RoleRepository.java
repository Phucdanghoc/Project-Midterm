package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tdtu.javatech.midterm.Model.Role;

public interface RoleRepository extends JpaRepository<Role,Integer> {

    Role findByName(String name);
}
