package com.distribuida.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/categorias")
public class CategoriaController {

	@Autowired
	private CategoriaDAO CategoriaDAO;
	
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Categoria> categorias = CategoriaDAO.findAll();
		
		model.addAttribute("categorias", categorias);		
		
		return "categorias-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCategoria") @Nullable Integer idCategoria
			, @RequestParam("opcion") @Nullable Integer opcion
			, Model model
			) {
		if(idCategoria != null) {
			Categoria categoria = CategoriaDAO.findOne(idCategoria);
			model.addAttribute("categoria", categoria);
		}
		
		
		if(opcion == 1) return "categorias-add";
		else return "categorias-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idCategoria") @Nullable Integer idCategoria			
			, @RequestParam("categoria") @Nullable String categoria
			, @RequestParam("descripcion") @Nullable String descripcion			
			) {
		 
		if(idCategoria == null) {
			Categoria categoria1 = new Categoria(0, categoria, descripcion);
			CategoriaDAO.add(categoria1);
		}else {
			Categoria categoria2 = new Categoria(0, categoria, descripcion);
			CategoriaDAO.up(categoria2);
		}
		
		return "redirect:/categorias/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCategoria") @Nullable Integer idCategoria) {
		
		CategoriaDAO.del(idCategoria);
		
		return "redirect:/categorias/findAll";
	}
	
		
}
