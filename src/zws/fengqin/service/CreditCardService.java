package zws.fengqin.service;

import java.util.List;
import java.util.Map;
import zws.fengqin.model.CreditCard;


public interface CreditCardService {

	 List<CreditCard> queryAll();

	 int del(Integer id);

	 int update(Map<String, Object> map);

	 int add(CreditCard creditCard);
}
