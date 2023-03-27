package tdtu.javatech.midterm.Service;


import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Model.UserDTO;

import java.util.List;

public interface UserService {
    void saveUser(UserDTO userDto);

    User findByEmail(String email);

    List<UserDTO> findAllUsers();
}
