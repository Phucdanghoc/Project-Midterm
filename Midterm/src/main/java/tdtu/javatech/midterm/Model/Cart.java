package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "cart")
public class Cart{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private int Quantity;
    private String created_at;

    @ManyToOne
    @JoinColumn(name = "PRO_ID")
    @JsonIgnore
    private Product products;
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "USE_ID")
    private User user;
    @Override
    public String toString() {
        return "Cart{" +
                "Id=" + Id +
                ", Quantity=" + Quantity +
                ", created_at='" + created_at + '\'' +
                ", products=" + products +
                ", user=" + user +
                '}';
    }
}
