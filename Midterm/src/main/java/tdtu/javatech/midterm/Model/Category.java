package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table(name = "categorys")
public class Category{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Product> products;

}
