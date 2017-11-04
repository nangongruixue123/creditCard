package zws.fengqin.mapper;

import java.util.List;
import java.util.Map;

import zws.fengqin.model.CreditCard;

public interface CreditCardMapper {

	List<CreditCard> queryAll();

	int del(Integer id);

	int update(Map<String, Object> map);

	int add(CreditCard creditCard);
	
}
