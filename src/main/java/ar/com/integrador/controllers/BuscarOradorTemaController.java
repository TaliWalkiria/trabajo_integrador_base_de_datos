package ar.com.integrador.controllers;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BuscarOradorTemaController")
public class BuscarOradorTemaController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Levantamos el tema a buscar
        String temaBuscar = req.getParameter("temabuscar");

        // Creamos una instancia del DAO
        iOradorDAO dao = new OradorDAOMysqlImpl();

        // Lista para almacenar los resultados de la búsqueda
        List<Orador> oradores = new ArrayList<>();

        try {
            // Realizamos la búsqueda
            oradores = dao.search(temaBuscar);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Configuramos el resultado en el objeto request
        req.setAttribute("listado", oradores);

        // Redirigimos a la página de resultados (listado.jsp)
        getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Redirigimos al método doPost para manejar la lógica de búsqueda
        doPost(req, resp);
    }
}
