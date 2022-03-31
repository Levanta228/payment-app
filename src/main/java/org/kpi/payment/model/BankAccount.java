package org.kpi.payment.model;

import lombok.*;

@Data // added ToString, EqualsAndHashCode, Getter, Setter and RequiredArgsConstructor
@NoArgsConstructor // for Hibernate
@AllArgsConstructor
public class BankAccount {
    private Integer id;
    private Integer accountNumber;
    private Long balance;
}
