package br.com.fiap.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.EstoqueModel;
import br.com.fiap.repository.EstoqueRepository;

@Controller
@RequestMapping("/estoque")
public class EstoqueController {
	
	@Autowired
	public EstoqueRepository repository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("estoqueModel") EstoqueModel EstoqueModel, 
					   Model model) {
		
		if("estoque-editar".equals(page)) {
			model.addAttribute("estoqueModel", repository.findById(id));
		}
		
		return page;
	}
	
	@GetMapping()
	public String findAll(Model model) {
		
		model.addAttribute("estoque", repository.findAll());

		return "estoque";
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		model.addAttribute("estoque", repository.findById(id));
		return "estoque-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid EstoqueModel estoqueModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "estoque-novo";
		}
		
		repository.save(estoqueModel);
		redirectAttributes.addFlashAttribute("messages", "Produto cadastrado no estoque com sucesso!");
		
		return "redirect:/estoque";
	}
		
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid EstoqueModel estoqueModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "produto-editar";
		}
		
		estoqueModel.setId(id);
		repository.update(estoqueModel);
		redirectAttributes.addFlashAttribute("messages", "Estoque alterado com sucesso!");
		
		return "redirect:/estoque";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		repository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Produto exclu�do do estoque com sucesso!");

		return "redirect:/estoque";
	}
	
	
}
