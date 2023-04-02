package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "product")
public class Product  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "name")
    private String productName;

    @Column(name = "price")
    private Double productPrice;

    private String Detail;

    private double Rate;

    private String IMG_SRC;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "COL_ID")
    @JsonIgnore
    private Color color;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CAT_ID")
    @JsonIgnore
    private Category category;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BRA_ID")
    @JsonIgnore
    private Brand brand;


//    @Override
//    public String toString() {
//        return "Product{" +
//                "ID=" + ID +
//                ", Name='" + Name + '\'' +
//                ", Price=" + Price +
//                ", Detail='" + Detail + '\'' +
//                ", Rate=" + Rate +
//                ", IMS_SRC='" + IMG_SRC + '\'' +
//                '}';
//    }

}
