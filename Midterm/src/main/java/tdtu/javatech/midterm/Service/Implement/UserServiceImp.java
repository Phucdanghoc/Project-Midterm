package tdtu.javatech.midterm.Service.Implement;
import tdtu.javatech.midterm.Model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Repository.Person.UserRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.UserService;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Override
    public User Check(User user) {
       return userRepository.findByEmailAndPassword(user.getEmail(),user.getPassword());
    }

    @Override
    public User getById(String id) {
        return userRepository.findById(Integer.parseInt(id)).get();
    }


}
