package zws.fengqin.conterller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import zws.fengqin.model.CreditCard;
import zws.fengqin.service.CreditCardService;

@Controller
public class CreditCardConterller {

	@Autowired
	private CreditCardService creditCardService;

	 @RequestMapping("search")
	 @ResponseBody
	 public List<CreditCard> getAll(){
	 return creditCardService.queryAll();
	 }
	 
	 @RequestMapping("addCard")
		public String add(CreditCard creditCard) {
			System.out.println(creditCard.getKazhu());
			creditCardService.add(creditCard);
			return "redirect:/index.jsp";
		}
	 
		@RequestMapping(value="/updateCard",method=RequestMethod.POST)
		@ResponseBody
		public String update(@RequestBody Map<String, Object> map) {
//			System.out.println(creditCard.getKawei());
			System.out.println(map.size());
//			System.out.println(creditCard.getKazhu());
//			System.out.println(creditCard.getId()	);
//			System.out.println(creditCard.getMoney());
			//creditCardService.update(map);
			return "success";
		}
		
		@RequestMapping("delete")
		public String del(Integer id) {
			System.out.println(id);
			creditCardService.del(id);
			return "redirect:/index.jsp";
		}



}
