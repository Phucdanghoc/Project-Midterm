package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int Id;

    private String name;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;

    @Override
    public String toString() {
        return "Color{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                '}';
    }
}
