package tdtu.javatech.midterm.Controller.Api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.ProductRepository;

import java.util.List;

@RestController
@RequestMapping("api/product")
public class APIProduct {

    @Autowired
    private ProductRepository productRepository;
    @GetMapping()
    List<Product> All(){
        return  productRepository.findAll();
    }

    @PostMapping("/add")
    Product newProduct(@RequestBody Product product){
        return productRepository.save(product);
    }
    @GetMapping("get/{id}")
    Product get(@PathVariable("id") String id){
        return productRepository.findById(Integer.parseInt(id)).get();
    }

    @PutMapping("update/{id}")
    Product replaceEmployee(@RequestBody Product newProduct, @PathVariable String id) {

        return productRepository.findById(Integer.parseInt(id))
                .map(product -> {
                    product.setProductName(newProduct.getProductName());
                    product.setProductPrice(newProduct.getProductPrice());
                    product.setColor(newProduct.getColor());
                    product.setCategory(newProduct.getCategory());
                    product.setDetail(newProduct.getDetail());
                    product.setBrand(newProduct.getBrand());
                    product.setIMG_SRC(newProduct.getIMG_SRC());
                    product.setRate(newProduct.getRate());
                    return productRepository.save(product);
                })
                .orElseGet(() -> {
                    newProduct.setID(Integer.parseInt(id));
                    return productRepository.save(newProduct);
                });
    }

    @DeleteMapping("delete/{id}")
    void Delete(@PathVariable String id){
        productRepository.deleteById(Integer.parseInt(id));
    }
}
