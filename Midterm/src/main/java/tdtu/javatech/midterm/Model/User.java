package tdtu.javatech.midterm.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
public class User{
    private static final long serialVersionUID=1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    private String name;

    private String email;

    private String password;

    private String address;

    private String phone;
    @Column(name = "CREATED_AT")
    @Temporal(TemporalType.TIMESTAMP)
    private  String created_at;

    @OneToMany(mappedBy = "Id",cascade = CascadeType.ALL)
    private List<Cart> cartList;


    @ManyToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
    @JoinTable(name="users_roles", joinColumns={@JoinColumn(name="user_id", referencedColumnName="id")},
                inverseJoinColumns={@JoinColumn(name="role_id", referencedColumnName="id")})
    private Collection<Role> roles;

}
