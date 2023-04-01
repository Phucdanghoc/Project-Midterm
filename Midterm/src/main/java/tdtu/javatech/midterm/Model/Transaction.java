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
@Table(name = "transaction")
public class Transaction{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    private double total;

    private String message;

    private int status;

    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date created;


    @ManyToOne
    @JoinColumn(name = "CAR_ID")
    @JsonIgnore
    private Cart cart ;

    @ManyToOne
    @JoinColumn(name = "USER_ID")
    @JsonIgnore
    private User user;

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

