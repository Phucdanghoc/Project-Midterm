package tdtu.javatech.midterm.Controller.Api.CartAPI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Repository.Action.CartRepository;

import java.util.List;

@RequestMapping("api/cart")
@RestController
public class APICart {

    @Autowired
    private CartRepository cartRepository;
    @GetMapping()
    List<Cart> All(){
        return  cartRepository.findAll();
    }

    @PostMapping("/add")
    Cart newProduct(@RequestBody Cart cart){
        return cartRepository.save(cart);
    }
    @GetMapping("get/{id}")
    Cart get(@PathVariable("id") String id){
        return cartRepository.findById(Integer.parseInt(id)).get();
    }

    @PutMapping("update/{id}")
    Cart replaceEmployee(@RequestBody Cart newCart, @PathVariable String id) {

        return cartRepository.findById(Integer.parseInt(id))
                .map(cart -> {
                    cart.setProducts(newCart.getProducts());
                    cart.setUser(newCart.getUser());
                    cart.setCreated_at(newCart.getCreated_at());
                    cart.setQuantity(newCart.getQuantity());
                    return cartRepository.save(cart);
                })
                .orElseGet(() -> {
                    newCart.setId(Integer.parseInt(id));
                    return cartRepository.save(newCart);
                });
    }

    @DeleteMapping("delete/{id}")
    void Delete(@PathVariable String id){
        cartRepository.deleteById(Integer.parseInt(id));
    }
}
