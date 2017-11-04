package zws.fengqin.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import zws.fengqin.model.CreditCard;
import zws.fengqin.service.impl.CreditCardServiceImpl;


public class test {

	public static void main(String[] args) {
		
		ApplicationContext context =new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
		CreditCardServiceImpl creditCardService = context.getBean(CreditCardServiceImpl.class);
		List<CreditCard> stus = creditCardService.queryAll();
		//System.out.println(stus.size());
		for (CreditCard stu : stus) {
			System.out.println(stu.getFakahang());
		}
	}
}
