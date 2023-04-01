package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "name")
    private String productName;

    private Double Price;

    private String Detail;

    private double Rate;

    private String IMG_SRC;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "COL_ID")

    private Color color;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CAT_ID")
    private Category category;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BRA_ID")
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
