package tdtu.javatech.midterm.Service.Implement;

import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Repository.Action.CartRepository;
import tdtu.javatech.midterm.Service.CartService;

import java.util.List;

@Service
public class CartServiceImp implements CartService {
    private CartRepository cartRepository;
    @Override
    public List<Cart> getAll() {
        return cartRepository.findAll();
    }

    @Override
    public void Save(Cart cart) {
        cartRepository.save(cart);
    }

}
