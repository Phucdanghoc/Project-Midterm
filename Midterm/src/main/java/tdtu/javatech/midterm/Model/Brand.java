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
@Table(name = "brand")
public class Brand implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String name;
    private String Address;
    private String Phone;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    private List<Product> products;

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
