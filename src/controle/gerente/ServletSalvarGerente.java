package controle.gerente;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.GerenteDAO;
import modelo.dominio.Gerente;

/**
 * Servlet implementation class ServletRegistrarUsuario
 */
@WebServlet("/salvarGerente")
public class ServletSalvarGerente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSalvarGerente() {
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
		
		String login 			= request.getParameter("login");
		String nome 			= request.getParameter("nome");
		String senha 			= request.getParameter("senha");
		String senhaConf 		= request.getParameter("senhaConf");
		
		boolean dadosOK = true;
		String pagina = null;
		String mensagem = null;
		
		if (dadosOK) {
			GerenteDAO gerenteDao = new GerenteDAO();
			Gerente gerente = gerenteDao.obterPorLogin(login);
			
			if (gerente != null) {
				dadosOK = false;
				mensagem = "Já temos um cliente com esse login!";
			}
		}		
		
		if (!senha.equals(senhaConf)) {
			dadosOK = false;
			mensagem = "As senhas devem ser iguais.";
		}
		
		if (dadosOK){
			Gerente gerente = new Gerente(login, senhaConf, nome, true);
			
			pagina = "exibirCadastroGerentes";
			GerenteDAO dao = new GerenteDAO();
			dao.salvar(gerente);
			request.setAttribute("gerente", gerente);
		}
		else{
			pagina = "exibirCadastroGerentes";
		}
		
		request.setAttribute("mensagem", mensagem);

		RequestDispatcher disp = request.getRequestDispatcher(pagina);

		disp.forward(request, response);
	}
	
}
