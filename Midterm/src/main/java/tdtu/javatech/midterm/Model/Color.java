package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "Color")
public class Color implements Serializable {
    @Id
    @Column(name = "ID")

    private  int Id;

    @Column(name = "Name")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Color(String name) {

        this.name = name;
    }

    public Color() {

    }
    public Color(int id) {
        Id = id;
    }
    public void setId(int id) {
        this.Id = id;
    }

    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;

    public int getId() {
        return Id;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Color{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                '}';
    }
}
