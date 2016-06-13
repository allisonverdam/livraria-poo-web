package controle.livro;

import java.io.IOException;

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
@WebServlet(name = "alterarLivro", urlPatterns = { "/alterarLivro" })
public class ServletAlterarLivro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAlterarLivro() {
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
		int id					= Integer.parseInt(request.getParameter("id"));

		
		LivroDAO livroDao = new LivroDAO();
		Livro livro = livroDao.lerPorId(id);
		livro.setNomeLivro(nomeLivro);
		livro.setDescricao(descricao);
		livro.setAnoLancamento(anoLancamento);
		livro.setNumPaginas(numPaginas);
		
		livroDao.alterar(livro);
		request.setAttribute("livro", livro);
		
		request.getRequestDispatcher("livro/confirmacao-alteracao-livro.jsp").forward(request, response);
	}
}
