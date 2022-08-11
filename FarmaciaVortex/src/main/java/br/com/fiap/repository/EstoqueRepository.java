package br.com.fiap.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import br.com.fiap.model.EstoqueModel;


@Repository
public class EstoqueRepository {
	
	private static final String FIND_ALL = "SELECT * FROM FARMACIA";
	private static final String GET = "SELECT * FROM FARMACIA WHERE ID = ?";
	private static final String SAVE = "INSERT INTO FARMACIA (NOME, PRECO, QTDESTOQUE, DESCRICAO, CLASSIFICACAO, FABRICANTE) VALUES (?, ?, ?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE FARMACIA SET NOME = ?, PRECO = ?, QTDESTOQUE = ?, DESCRICAO = ?, CLASSIFICACAO = ?, FABRICANTE = ? WHERE ID = ?";
	private static final String DELETE = "DELETE FROM FARMACIA WHERE ID = ?";
	
	@Autowired
	public JdbcTemplate jdbcTemplate;
	
	public EstoqueRepository() {
		
	}

	public List<EstoqueModel> findAll() {
		List<EstoqueModel> produtos = this.jdbcTemplate.query(FIND_ALL, new BeanPropertyRowMapper<EstoqueModel>(EstoqueModel.class));
		
		return produtos;
	}

	public EstoqueModel findById(long id) {

		EstoqueModel estoque = this.jdbcTemplate.queryForObject(GET, new BeanPropertyRowMapper<EstoqueModel>(EstoqueModel.class), id);
		return estoque;
	}
	
	public void save(EstoqueModel estoqueModel) {
		this.jdbcTemplate.update(SAVE, 
				estoqueModel.getNome(),
				estoqueModel.getPreco(), 
				estoqueModel.getQtdEstoque(), 
				estoqueModel.getDescricao(),
				estoqueModel.getClassificacao(),
				estoqueModel.getFabricante());
				
	}

	public void update(EstoqueModel estoqueModel) {
		this.jdbcTemplate.update(UPDATE, 
				estoqueModel.getNome(),
				estoqueModel.getPreco(), 
				estoqueModel.getQtdEstoque(), 
				estoqueModel.getDescricao(),
				estoqueModel.getClassificacao(),
				estoqueModel.getFabricante(),
				estoqueModel.getId());	
		}

	public void deleteById(long id) {
		this.jdbcTemplate.update(DELETE, id);
	}
	
	

}
