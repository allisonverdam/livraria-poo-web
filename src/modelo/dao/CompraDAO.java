package modelo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import modelo.dominio.Cliente;
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
