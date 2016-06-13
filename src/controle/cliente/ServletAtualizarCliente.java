package controle.cliente;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.ClienteDAO;
import modelo.dominio.Cliente;

/**
 * Servlet implementation class ServletSalvarFilme
 */
@WebServlet(name = "atualizarCliente", urlPatterns = { "/atualizarCliente" })
public class ServletAtualizarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAtualizarCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
        Cliente cliente = (Cliente) session.getAttribute("usuario");
        
        ClienteDAO clienteDao = new ClienteDAO();
        clienteDao.alterar(cliente);
        
        request.setAttribute("cliente", cliente);
        request.getRequestDispatcher("cliente/confirmacao-altualizacao-cliente.jsp").forward(request, response);
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
		
		clienteDao.alterar(cliente);
		request.setAttribute("cliente", cliente);
		
		request.getRequestDispatcher("cliente/confirmacao-atualizacao-cliente.jsp").forward(request, response);
	}
}
