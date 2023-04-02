package tdtu.javatech.midterm.Service;

import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Model.User;

import java.util.List;

public interface CartService{
    List<Cart> getAll(User user);

    void Delete(String id);

    void Save(Cart cart);

    Double Total(User user);


}
