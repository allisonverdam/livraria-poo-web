package modelo.dao;

import javax.persistence.EntityManager;

import modelo.dominio.Livro;
import modelo.util.JpaDAO;

public class LivroDAO extends JpaDAO<Livro> {
	
	public LivroDAO() {
		super();
	}

	public LivroDAO(EntityManager manager) {
		super(manager);
	}
}
