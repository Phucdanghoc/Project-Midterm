package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "product")
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
    @JoinColumn(name = "COL_ID")
    private Color Color;

    @ManyToOne
    @JoinColumn(name = "CAT_ID")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "BRA_ID")
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

    public tdtu.javatech.midterm.Model.Color getColor() {
        return Color;
    }

    public void setColor(tdtu.javatech.midterm.Model.Color color) {
        Color = color;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
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

    public Product(String name, Double price, String detail, double rate, String IMS_SRC    ) {
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
