package controle.cliente;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.ClienteDAO;
import modelo.dominio.Cliente;

/**
 * Servlet implementation class ServletSalvarFilme
 */
@WebServlet(name = "alterarCliente", urlPatterns = { "/alterarCliente" })
public class ServletAlterarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAlterarCliente() {
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

				
		ClienteDAO clienteDao = new ClienteDAO();
		Cliente cliente = clienteDao.lerPorId(Integer.parseInt(id));
		cliente.setNome(nome);
		
		cliente.getCompra();
		
		clienteDao.alterar(cliente);
		request.setAttribute("cliente", cliente);
		
		request.getRequestDispatcher("cliente/confirmacao-alteracao-cliente.jsp").forward(request, response);
	}
}
