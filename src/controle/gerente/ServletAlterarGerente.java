package controle.gerente;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.GerenteDAO;
import modelo.dominio.Gerente;

/**
 * Servlet implementation class ServletSalvarFilme
 */
@WebServlet("/alterarGerente")
public class ServletAlterarGerente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAlterarGerente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id			= request.getParameter("id");
		String nome 		= request.getParameter("nome");

		
		GerenteDAO gerenteDao = new GerenteDAO();
		Gerente gerente = gerenteDao.lerPorId(Integer.parseInt(id));
		gerente.setNome(nome);
		
		gerenteDao.alterar(gerente);
		request.setAttribute("gerente", gerente);
		
		request.getRequestDispatcher("gerente/confirmacao-alteracao-gerente.jsp").forward(request, response);
	}
}
