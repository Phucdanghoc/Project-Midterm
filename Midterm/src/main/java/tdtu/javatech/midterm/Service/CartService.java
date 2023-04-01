package tdtu.javatech.midterm.Service;

import tdtu.javatech.midterm.Model.Cart;

import java.util.List;

public interface CartService{
    List<Cart> getAll();

    void Delete(String id);

    void Save(Cart cart);
}
