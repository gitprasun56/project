package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.Uom;
import in.nit.service.IUomService;
@Controller
@RequestMapping("/uom")
public class UmoController {
	
	@Autowired
	private IUomService service;
	
	@RequestMapping("/uregister")
	public String showUomRegPage()
	{
		return "UomRegister";
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveUom(@ModelAttribute Uom uom, Model model)
	{
		Integer id=service.saveUom(uom);
		String message="Uom  '"+id+"' saved ";
		model.addAttribute("message", message);
		return "UomRegister";
	}
	@RequestMapping("/all")
	public String getAllUoms(Model model)
	{
		List<Uom> list=service.getAllUoms();
		model.addAttribute("list", list);
		return "UomData";
	}
	
	@RequestMapping("/delete")
	public String deleteUom(@RequestParam("uoId")Integer id,Model model)
	{
		service.deleteUom(id);
		String message="Uom '" +id+"' Deleted";
		model.addAttribute("message", message);
		List<Uom> list=service.getAllUoms();
		model.addAttribute("list", list);
		return "UomData";
	}
}
