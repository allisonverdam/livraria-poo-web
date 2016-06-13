package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.ClienteDAO;
import modelo.dao.GerenteDAO;
import modelo.dominio.Cliente;
import modelo.dominio.Gerente;

/**
 * Servlet implementation class ServletRegistrarUsuario
 */
@WebServlet("/salvarUsuario")
public class ServletSalvarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSalvarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendError(403, "Acesso Negado!");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		String login 			= request.getParameter("login");
		String nome 			= request.getParameter("nome");
		String senha 			= request.getParameter("senha");
		String senhaConf 		= request.getParameter("senhaConf");
		
		boolean dadosOK = true;
		String pagina = null;
		String mensagem = null;
		
		if (dadosOK) {
			ClienteDAO clienteDao = new ClienteDAO();
			Cliente cliente = clienteDao.obterPorLogin(login);
			
			if (cliente != null) {
				dadosOK = false;
				mensagem = "Já temos um cliente com esse login!";
			}
		
			GerenteDAO gerenteDao = new GerenteDAO();
			Gerente gerente = gerenteDao.obterPorLogin(login);
			
			if (gerente != null) {
				dadosOK = false;
				mensagem = "Já temos um gerente com esse login!";
			}
		}
				
		if (!senha.equals(senhaConf)) {
			dadosOK = false;
			mensagem = "As senhas devem ser iguais.";
		}
		
		if (dadosOK){
				Cliente cliente = new Cliente();
				cliente.setLogin(login);
				cliente.setSenha(senhaConf);
				cliente.setNome(nome);
				
				pagina = "cliente/confirmacao-registro-cliente.jsp";
				ClienteDAO dao = new ClienteDAO();
				dao.salvar(cliente);
				request.setAttribute("cliente", cliente);
				session.setAttribute("usuario", cliente);
		}
		else{
			pagina = "registrar.jsp";
		}
		
		request.setAttribute("mensagem", mensagem);

		RequestDispatcher disp = request.getRequestDispatcher(pagina);
		
		disp.forward(request, response);
	}
	
}
