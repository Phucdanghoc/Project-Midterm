package tdtu.javatech.midterm.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.io.Serializable;

@Entity
@Table(name = "Color")
public class Color implements Serializable {
    @Id
    @Column(name = "ID")
    private  int Id;

    @Column(name = "Name")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Color(int id, String name) {
        Id = id;
        this.name = name;
    }

    public Color() {

    }
    public Color(int id) {
        Id = id;
    }
    public void setId(int id) {
        this.Id = id;
    }

    @Override
    public String toString() {
        return "Color{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                '}';
    }
}
