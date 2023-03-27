package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "transaction")
public class Transaction implements Serializable {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    @Column(name = "TOTAL_PRICE")
    private double total;

    @Column(name = "MESSAGE")
    private String message;

    @Column(name = "STATUS")
    private int status;

    @ManyToOne
    @JoinColumn(name = "CAR_ID")
    private Cart cart ;
    public Transaction(int id, double total, String message, int status, User user) {
        Id = id;
        this.total = total;
        this.message = message;
        this.status = status;
    }

    public Transaction() {

    }


    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


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

