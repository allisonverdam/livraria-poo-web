package controle.livro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.LivroDAO;
import modelo.dao.CompraDAO;
import modelo.dominio.Cliente;
import modelo.dominio.Livro;
import modelo.dominio.Compra;

/**
 * Servlet implementation class ServletAlugarFilme
 */
@WebServlet("/comprarLivro")
public class ServletComprarLivro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletComprarLivro() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		HttpSession session = request.getSession(true);
		Cliente cliente = (Cliente) session.getAttribute("usuario");
				
		LivroDAO dao = new LivroDAO();
		Livro livro = dao.lerPorId(id);
		
		Compra compra = new Compra();
		compra.setCliente(cliente);
		compra.setLivro(livro);
		CompraDAO compraDao = new CompraDAO();
		compraDao.salvar(compra);
		
		
		request.setAttribute("livro", livro);
		
		request.getRequestDispatcher("livro/confirmacao-compra-livro.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
