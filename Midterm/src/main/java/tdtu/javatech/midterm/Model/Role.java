package tdtu.javatech.midterm.Model;


import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name",nullable = false,unique = true)
    private String name;

    @ManyToMany(mappedBy = "roles")
    private List<User> users;
}
