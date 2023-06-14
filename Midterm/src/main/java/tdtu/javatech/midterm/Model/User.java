package tdtu.javatech.midterm.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "address")
    private String address;

    @Column(name = "gender")
    private  String gender;

    @Column(name = "birth")
    private LocalDateTime birth;

    @Column(name = "phone")
    private String phone;

    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private  String created_at;

    @OneToMany(mappedBy = "user")
    private List<Cart> carts ;

    @OneToMany(mappedBy = "user")
    private List<Transaction> transactions ;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @JsonIgnore
    @JoinTable(
            name = "users_roles",
            joinColumns = {
                    @JoinColumn(name = "user_id", referencedColumnName = "id"),
            },
            inverseJoinColumns = {
                    @JoinColumn(name = "role_id", referencedColumnName = "id"),
            }
    )
    private Collection<Role> roles;
}
