package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "products")
public class Product  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "title")
    private String title;

    @Column(name = "price")
    private Double price;

    @Column(name = "detail")
    private String detail;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "created_at")
    private LocalDateTime created_at;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    @JsonIgnore
    private Category category;

    @Column(name = "status")
    private String status;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<Image> images;

    @OneToOne(fetch = FetchType.EAGER, mappedBy = "product")
    private Cart cart;

    @OneToOne(fetch = FetchType.EAGER, mappedBy = "product")
    private Transaction transaction;

}
