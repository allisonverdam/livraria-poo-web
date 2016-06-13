package modelo.dao;

import javax.persistence.EntityManager;

import modelo.dominio.Compra;
import modelo.util.JpaDAO;

public class CompraDAO extends JpaDAO<Compra> {
	
	public CompraDAO() {
		super();
	}

	public CompraDAO(EntityManager manager) {
		super(manager);
	}
}
