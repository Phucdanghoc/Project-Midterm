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
@Table(name = "transactions")
public class Transaction{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    @Column(name="price")
    private double price;

    @Column(name = "note")
    private String note;

    @Column(name = "status")
    private String status;

    @Column(name = "location")
    private String location;

    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date created_at;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @JsonIgnore
    private User user;

    @OneToOne
    @JoinColumn(name = "product_id")
    @JsonIgnore
    private Product product;
}

