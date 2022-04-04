package org.kpi.payment;

import lombok.AllArgsConstructor;
import org.kpi.payment.model.BankAccount;
import org.kpi.payment.model.Payment;
import org.kpi.payment.model.User;
import org.kpi.payment.model.UserRole;
import org.kpi.payment.repositories.BankAccountRepository;
import org.kpi.payment.repositories.PaymentRepository;
import org.kpi.payment.repositories.UserEntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

import java.time.LocalDateTime;
import java.util.HashSet;

@SpringBootApplication
@AllArgsConstructor
public class PaymentApplication {


	private UserEntityRepository userEntityRepository;
	private PaymentRepository paymentRepository;
	private BankAccountRepository bankAccountRepository;

	public static void main(String[] args) {
		SpringApplication.run(PaymentApplication.class, args);
	}

//	@EventListener(ApplicationReadyEvent.class)
//	public void testBankAccountRepository() {
//		BankAccount b = new BankAccount();
//		b.setAccountNumber(11255832);
//		b.setBalance(100020L);
//		bankAccountRepository.save(b);
//	}

	@EventListener(ApplicationReadyEvent.class)
	public void testPaymentRepository() {
		Payment p = new Payment();
		p.setPaymentDate(LocalDateTime.now());
		p.setAmount(10000L);
	}

//	@EventListener(ApplicationReadyEvent.class)
//	public void testUserRepository() {
//		User u = new User();
//		u.setEmail("qqwewe");
//		u.setFirstName("L12312ad12312oh");
//		u.setLastName("loh112asd123232");
//		u.setCellNumber("11323");
//		u.setPassword("zcaqwesd");
//		UserRole role1 = new UserRole();
//		UserRole role = new UserRole();
//		role1.setRole("admin");
//		role.setRole("user");
//		HashSet<UserRole> roles = new HashSet<>();
//		roles.add(role1);
//		roles.add(role);
//		u.setRoles(roles);
//		userEntityRepository.save(u);
//	}

}
