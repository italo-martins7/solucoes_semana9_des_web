package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pais;
import service.PaisService;

public class VisualizarPais implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pPopulacao = request.getParameter("populacao");
		String pArea = request.getParameter("area");
		int id = -1;
		long populacao = -1;
		double area = -1;
		try {
			id = Integer.parseInt(pId);

		} catch (NumberFormatException e) {
		}
		try {
			populacao = Long.parseLong(pPopulacao);
			area = Double.parseDouble(pArea);
		} catch (NumberFormatException e) {
		}
		
		Pais pais = new Pais();
		pais.setId(id);
		pais.setNome(pNome);
		pais.setPopulacao(populacao);
		pais.setArea(area);

		PaisService ps = new PaisService();
		ps.criar(pais);

		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		pais = ps.carregar(pais.getId());
		request.setAttribute("pais", pais);
		view = request.getRequestDispatcher("VisualizarPais.jsp");		
		
		view.forward(request, response);

	}

}
