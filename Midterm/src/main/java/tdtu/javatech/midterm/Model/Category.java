package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "ID")
    private int Id;

    @Column(name = "NAME")
    private String Name;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Category() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public Category(int id, String name) {
        Id = id;
        Name = name;
    }



    @Override
    public String toString() {
        return "Category{" +
                "Id=" + Id +
                ", Name='" + Name + '\'' +
                '}';
    }
}
