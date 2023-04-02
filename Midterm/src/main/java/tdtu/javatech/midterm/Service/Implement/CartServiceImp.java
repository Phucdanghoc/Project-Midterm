package tdtu.javatech.midterm.Service.Implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Repository.CartRepository;
import tdtu.javatech.midterm.Service.CartService;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CartServiceImp implements CartService {
    @Autowired
    private CartRepository cartRepository;
    @Override
    public List<Cart> getAll(User user) {
        return cartRepository.findAllByUser(user);
    }

    @Override
    public void Delete(String id) {
        cartRepository.deleteById(Integer.parseInt(id));
    }

    @Override
    public void Save(Cart cart) {
        cartRepository.save(cart);
    }

    public Double Total(User user) {
        return cartRepository.findAllByUser(user).stream().map(cart -> cart.getQuantity()*cart.getProducts().getProductPrice()).collect(Collectors.toList()).stream().mapToDouble(Double::doubleValue).sum();
    }

}
