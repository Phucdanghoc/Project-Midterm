package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "cart")
public class Cart implements Serializable {
    @Id
    @Column(name = "ID")
    private int Id;

    @Column(name = "QUANTITY")
    private int Quantity;

    public Cart() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "Id=" + Id +
                ", Quantity=" + Quantity +
                ", created_at='" + created_at + '\'' +
                ", product=" + product +
                '}';
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public Product getProduct() {
        return product;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    @Column(name = "CREATED_AT")
    private String created_at;

    @ManyToOne
    @JoinColumn(referencedColumnName = "PRO_ID")
    private Product product;

    public Cart(int id, int quantity, String created_at, Product product) {
        Id = id;
        Quantity = quantity;
        this.created_at = created_at;
        this.product = product;
    }
}
