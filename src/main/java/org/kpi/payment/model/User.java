package org.kpi.payment.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.Enumerated;

@Data // added ToString, EqualsAndHashCode, Getter, Setter and RequiredArgsConstructor
@NoArgsConstructor // for Hibernate
@AllArgsConstructor
public class User {
    private Integer userId;
    @ToString.Exclude
    private Integer cellNumber;
    @ToString.Exclude
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    @Enumerated
    private TypeOfUser role;

}
