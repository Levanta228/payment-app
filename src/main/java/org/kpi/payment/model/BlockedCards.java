package org.kpi.payment.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

@Data // added ToString, EqualsAndHashCode, Getter, Setter and RequiredArgsConstructor
@NoArgsConstructor // for Hibernate
@AllArgsConstructor
public class BlockedCards {
    @ToString.Exclude
    private Integer id;
    private CreditCard cardId;
    @ToString.Exclude
    private static List<CreditCard> blockedCards;
}
