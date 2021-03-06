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
	public List<CreditCard> getAll() {
		return creditCardService.queryAll();
	}

	@RequestMapping(value = "addCard", method = RequestMethod.POST)
	public String add(@RequestBody Map<String, Object> creditCard) {
//		creditCardService.add(creditCard);
		return "redirect:/index.jsp";
	}

	@RequestMapping(value = "/updateCard", method = RequestMethod.POST)
	@ResponseBody
	public String update(@RequestBody Map<String, Object> map) {
		System.out.println(map.size());
		return "success";
	}

	@RequestMapping("delete")
	public String del(Integer id) {
		System.out.println(id);
		creditCardService.del(id);
		return "redirect:/index.jsp";
	}

}
