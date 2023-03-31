package tdtu.javatech.midterm.Service;

import tdtu.javatech.midterm.Model.Cart;

import java.util.List;

public interface CartService{
    List<Cart> getAll();

    void Save(Cart cart);
}
