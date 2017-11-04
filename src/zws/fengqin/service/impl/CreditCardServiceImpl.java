package zws.fengqin.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zws.fengqin.mapper.CreditCardMapper;
import zws.fengqin.model.CreditCard;
import zws.fengqin.service.CreditCardService;

@Service("CreditCardService")
public class CreditCardServiceImpl implements CreditCardService{
	
	@Autowired
	CreditCardMapper creditCardMapper;
	
	@Override
	public List<CreditCard> queryAll() {
		return creditCardMapper.queryAll();
	}

	@Override
	public int add(CreditCard creditCard) {
		return creditCardMapper.add(creditCard);	
	}
	
	@Override
	public int del(Integer id) {
		return creditCardMapper.del(id);	
	}

	@Override
	public int update(Map<String, Object> map) {
		return creditCardMapper.update(map);
		
	}
}
