package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.ProductEntity;
import com.example.repository.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	private ProductRepository repo;
	
	
	@GetMapping("/")
	public String getLoadForm(Model model) {
		
		model.addAttribute("prod", new ProductEntity());
		return "index";
	}
	
	@PostMapping("/product")
	public String saveData(@ModelAttribute("prod") ProductEntity p,Model model) {
		p=repo.save(p);
		if(p.getPId()!=null) {
			model.addAttribute("msg", "Data Saved...");
		}
		
		return "index";
	}
	
	@GetMapping("/products")
	public String loadProducts(Model model) {
		model.addAttribute("products",repo.findAll() );
		return "data";
	}
	
}
