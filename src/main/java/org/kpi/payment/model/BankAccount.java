package org.kpi.payment.model;

import lombok.*;

import javax.persistence.*;


@EqualsAndHashCode(callSuper = false)
@Table(name = "bankaccount")
@Entity
@Data
public class BankAccount extends BaseEntity{

    @Column(name = "account_number")
    private Integer accountNumber;

    @Column
    private Long balance;
}
