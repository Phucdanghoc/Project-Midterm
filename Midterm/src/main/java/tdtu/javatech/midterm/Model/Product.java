package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "product")
public class Product implements Serializable {
    @Id
    @Column(name = "Id")
    private int ID;

    @Column(name = "NAME")
    private String Name;

    @Column(name = "PRICE")
    private Double Price;

    @Column(name = "DETAIL")
    private String Detail;

    @Column(name = "RATE")
    private double Rate;

    @Column(name = "IMG_SRC")
    private String IMS_SRC;

    @ManyToOne
    @JoinColumn(referencedColumnName = "COL_ID")
    private Color Color;

    @ManyToOne
    @JoinColumn(referencedColumnName = "CAT_ID")
    private Category category;

    @ManyToOne
    @JoinColumn(referencedColumnName = "BRA_ID")
    private Brand brand;

    public Product() {

    }

    public int getID() {
        return ID;
    }

    public String getName() {
        return Name;
    }

    public Double getPrice() {
        return Price;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setPrice(Double price) {
        Price = price;
    }


    public void setDetail(String detail) {
        Detail = detail;
    }

    public void setRate(double rate) {
        Rate = rate;
    }

    public void setIMS_SRC(String IMS_SRC) {
        this.IMS_SRC = IMS_SRC;
    }

    public String getDetail() {
        return Detail;
    }

    public double getRate() {
        return Rate;
    }

    public String getIMS_SRC() {
        return IMS_SRC;
    }

    public Product(int ID, String name, Double price, String detail, double rate, String IMS_SRC) {
        this.ID = ID;
        Name = name;
        Price = price;
        Detail = detail;
        Rate = rate;
        this.IMS_SRC = IMS_SRC;
    }
    @Override
    public String toString() {
        return "Product{" +
                "ID=" + ID +
                ", Name='" + Name + '\'' +
                ", Price=" + Price +
                ", Detail='" + Detail + '\'' +
                ", Rate=" + Rate +
                ", IMS_SRC='" + IMS_SRC + '\'' +
                '}';
    }

}
