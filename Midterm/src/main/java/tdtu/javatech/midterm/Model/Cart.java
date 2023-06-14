package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "carts")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @JsonIgnore
    private User user;

    @OneToOne
    @JoinColumn(name = "product_id")
    @JsonIgnore
    private Product product;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "created_at")
    private LocalDateTime created_at;

}
