package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "brand")
public class Brand implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int Id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "ADDRESS")
    private String Address;

    @Column(name = "PHONE")
    private String Phone;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Brand(int id, String name, String address, String phone) {
        Id = id;
        this.name = name;
        Address = address;
        Phone = phone;
    }

    public Brand() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", Address='" + Address + '\'' +
                ", Phone='" + Phone + '\'' +
                '}';
    }
}
