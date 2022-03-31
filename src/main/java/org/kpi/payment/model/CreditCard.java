package org.kpi.payment.model;


import lombok.Builder;
import lombok.Data;
import lombok.ToString;

import java.time.LocalDateTime;

@Data
@Builder
public class CreditCard {
    private final Integer card_id;
    private Integer card_number;
    @ToString.Exclude
    private LocalDateTime expirationDate;
    @ToString.Exclude
    private final Integer cvv;
    @ToString.Exclude
    private final Integer pin;
    private BankAccount accountId;
}
