package com.org.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.org.binding.Product;
import com.org.repository.ProductRepo;


@Controller
public class MyController {

	@Autowired
	private ProductRepo repo;
	
	@GetMapping("/")
	public String handleForm(Model model) {
		model.addAttribute("product", new Product());
		return "index";
	}
	
	@PostMapping("/save")
	public String submitForm(Product p ,Model model) {
		 p = repo.save(p);
		
		if(p != null)
				model.addAttribute("msg", "Data saved...!");
		
		model.addAttribute("product", new Product());
		return "index";
	}
	
	@GetMapping("/view")
	public String viewProduct(Model model) {
		model.addAttribute("products",repo.findAll());
		return "view";
	}
}
