package com.silverorder.domain.payment.repository;

import com.silverorder.domain.payment.dto.PaymentType;
import com.silverorder.domain.payment.dto.ResponsePayCardDto;
import com.silverorder.domain.payment.entity.Payment;
import com.silverorder.domain.user.entity.User;
import com.silverorder.global.dto.CardDto;
import jakarta.persistence.PersistenceException;

import java.util.List;

public interface PaymentRepository {
    List<ResponsePayCardDto> myPayCardList(User user) throws PersistenceException;
    Payment registPayment(User user, PaymentType paymentType);
    void registCard(User user, CardDto cardDto, Payment payment) throws PersistenceException;

}
