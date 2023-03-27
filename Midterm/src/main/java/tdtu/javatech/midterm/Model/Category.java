package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    private String Name;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;



    @Override
    public String toString() {
        return "Category{" +
                "Id=" + Id +
                ", Name='" + Name + '\'' +
                '}';
    }
}
