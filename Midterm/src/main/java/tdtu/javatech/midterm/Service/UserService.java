package tdtu.javatech.midterm.Service;
import tdtu.javatech.midterm.Model.User;


public interface UserService {
    User Check(User user);

    User getById(String id);
}
