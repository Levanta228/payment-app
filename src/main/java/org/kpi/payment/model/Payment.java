package org.kpi.payment.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Payment {
    private Integer paymentId;
    private Integer sender;
    private Integer receiver;
    private LocalDateTime paymentDate;
    private Long amount;
    private String type;
    private String details;
}
