package org.kpi.payment.model;


import lombok.*;
import javax.persistence.*;
import java.time.LocalDateTime;

@EqualsAndHashCode(callSuper = false)
@Table(name = "creditcard")
@Entity
@Data
@ToString(exclude = {"cardNumber", "cvv", "pin"})
public class CreditCard extends BaseEntity {

    @Column(name = "card_number")
    private Integer cardNumber;

    @Column(name = "expiration")
    private LocalDateTime expirationDate;

    @Column
    private Integer cvv;

    @Column
    private Integer pin;

    @ManyToOne
    @JoinColumn(name = "account_id")
    private BankAccount accountId;
}
