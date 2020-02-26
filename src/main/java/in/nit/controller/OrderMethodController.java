package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.OrderMethod;
import in.nit.service.IOrderMethodService;

@Controller
@RequestMapping("/order")
public class OrderMethodController {
	
	@Autowired
	private IOrderMethodService service;
	
	@RequestMapping("/register")
	public String showRegPage(Model model)
	{
		model.addAttribute("orderMethod", new OrderMethod());
		return "OrderMethodRegister";
		
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveOrder(@ModelAttribute OrderMethod orderMethod, Model model)
	{
		Integer id=service.saveOrderMethod(orderMethod);
		String message="Order Method '"+id+"' saved";
		model.addAttribute("message", message);
		model.addAttribute("orderMethod", new OrderMethod());
		return "OrderMethodRegister";
	}
	@RequestMapping("/all")
	public String getOrderMethods(Model model)
	{
		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodData";
	}
	@RequestMapping("/delete")
	public String deleteOrder(@RequestParam("omid")Integer id,Model model)
	{
		service.deleteOrderMethod(id);
		String message="Order '" +id+"' Deleted";
		model.addAttribute("message", message);
		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodData";	
	}
	@RequestMapping("/edit")
	public String showEditPage(@RequestParam("omid")Integer id,Model model)
	{
		OrderMethod od=service.getOneOrderMethod(id);
		model.addAttribute("orderMethod", od);
		return "OrderMethodEdit";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updateOrderMethod(@ModelAttribute OrderMethod orderMethod,Model model)
	{
		service.updateOrderMethod(orderMethod);
		String message="OrderMethod '"+orderMethod.getOrderId()+"' updated";
		model.addAttribute("message", message);
		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodData";
	}
	@RequestMapping("/view")
	public String showOneOrder(@RequestParam("omid")Integer id, Model model)
	{
		OrderMethod od=service.getOneOrderMethod(id);
		model.addAttribute("ob", od);
		return "OrderMethodView";
	}
	
}




