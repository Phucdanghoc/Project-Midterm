package tdtu.javatech.midterm.Repository.Person;

import org.springframework.data.jpa.repository.JpaRepository;
import tdtu.javatech.midterm.Model.Admin;

public interface AdminRepository extends JpaRepository<Admin,Integer> {
}
