package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Getter
@Setter
@Table(name = "color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int Id;

    @Column(name = "name")
    private String colorName;
    @OneToMany(mappedBy = "ID",cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Product> products;


}
