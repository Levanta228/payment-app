package org.kpi.payment.model;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@EqualsAndHashCode(callSuper = false)
@Table(name = "payment")
@Entity
@Data
public class Payment extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "sender")
    private BankAccount senderId;

    @ManyToOne
    @JoinColumn(name = "receiver")
    private BankAccount receiverId;

    @Column(name = "payment_date")
    private LocalDateTime paymentDate;

    @Column
    private Long amount;

    @Column
    private String type;

    @Column
    private String details;
}
