package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pais;
import service.PaisService;

public class ListarPais implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String chave = request.getParameter("data[search]");
		PaisService ps = new PaisService();
		ArrayList<Pais> listaPais = null;
		HttpSession session = request.getSession();

			if (chave != null && chave.length() > 0) {
				listaPais = ps.listarPaises(chave);
			} else {
				listaPais = ps.listarPaises();
			}
			session.setAttribute("listaPais", listaPais);
		

		RequestDispatcher dispatcher = request
		.getRequestDispatcher("ListarPaises.jsp");
		dispatcher.forward(request, response);


	}

}
