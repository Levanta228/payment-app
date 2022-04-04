package org.kpi.payment.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@EqualsAndHashCode(callSuper = false)
@Table(name = "table_user")
@Entity
@Data
@ToString(exclude = {"cellNumber", "password"})
public class User extends BaseEntity {

    @Column(name = "contact")
    private String cellNumber;

    @Column
    private String password;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "second_name")
    private String lastName;

    @Column
    private String email;

    @ManyToMany(fetch = FetchType.EAGER,
            cascade = {CascadeType.ALL})
    @JoinTable(name = "user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<UserRole> roles;

}
