package br.com.fiap.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

public class EstoqueModel {
	
	private long id;
	private String nome;
	private double preco;
	private int qtdEstoque;
	private String descricao;
	private String classificacao; 
	private String fabricante;
	
	public EstoqueModel() {
		
	}
	
	public EstoqueModel(long id, String nome, double preco, int qtdEstoque, String descricao, String classificacao,
			String fabricante) {
		super();
		this.id = id;
		this.nome = nome;
		this.preco = preco;
		this.qtdEstoque = qtdEstoque;
		this.descricao = descricao;
		this.classificacao = classificacao;
		this.fabricante = fabricante;
	}




	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Size(min = 2, max = 40, message = "Nome deve ter no m�nimo 2 e no m�ximo 40 caracteres")
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@DecimalMin(value = "0.1", message = "Pre�o deve ser acima de 0.0")
	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	
	@Min(value = 1, message = "Quantidade deve ser acima de 0")
	public int getQtdEstoque() {
		return qtdEstoque;
	}

	public void setQtdEstoque(int qtdEstoque) {
		this.qtdEstoque = qtdEstoque;
	}

	@Size(min = 1, max = 200, message = "Descri��o deve ter no m�nimo 1 e no m�ximo 200 caracteres")
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Size(min = 1, max = 200, message = "Classifica��o deve ter no m�nimo 1 e no m�ximo 200 caracteres")
	public String getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(String caracteristicas) {
		this.classificacao = caracteristicas;
	}

	@Size(min = 1, max = 200, message = "Fabricante deve ter no m�nimo 1 e no m�ximo 200 caracteres")
	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	
	
	
	
}
