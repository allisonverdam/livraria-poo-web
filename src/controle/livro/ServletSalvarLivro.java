package controle.livro;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.LivroDAO;
import modelo.dominio.Livro;

/**
 * Servlet implementation class ServletSalvarFilme
 */
@WebServlet(name = "salvarLivro", urlPatterns = { "/salvarLivro" })
public class ServletSalvarLivro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSalvarLivro() {
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
		
		String nomeLivro 		= request.getParameter("nomeLivro");
		String descricao 		= request.getParameter("descricao");
		int anoLancamento 		= Integer.parseInt(request.getParameter("anoLancamento"));
		int numPaginas 			= Integer.parseInt(request.getParameter("numPaginas"));
		float preco				= Float.parseFloat(request.getParameter("preco"));
		
		Livro livro = new Livro(nomeLivro, descricao, anoLancamento, numPaginas, preco);
		boolean dadosOK = true;
		String pagina = null;
		String mensagem = null;
			
		if (dadosOK)
		{
			pagina = "livro/confirmacao-registro-livro.jsp";
			LivroDAO dao = new LivroDAO();
			
			dao.alterar(livro);
		}
		else
		{
			pagina = "livro/cadastro-livros.jsp";
		}
		
		request.setAttribute("livro", livro);
		request.setAttribute("mensagem", mensagem);

		RequestDispatcher disp = request.getRequestDispatcher(pagina);

		disp.forward(request, response);
	}
}
