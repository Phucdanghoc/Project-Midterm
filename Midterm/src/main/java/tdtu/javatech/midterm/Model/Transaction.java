package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "transaction")
public class Transaction implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    private double total;

    private String message;

    private int status;

    @ManyToOne
    @JoinColumn(name = "CAR_ID")
    private Cart cart ;



    @Override
    public String toString() {
        return "Transaction{" +
                "Id=" + Id +
                ", total=" + total +
                ", message='" + message + '\'' +
                ", status=" + status +
                '}';
    }
}

