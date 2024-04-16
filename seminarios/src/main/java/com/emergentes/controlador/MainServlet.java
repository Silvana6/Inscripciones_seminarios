package com.emergentes.controlador;

import com.emergentes.modelo.Estudiante;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        
        Estudiante est = new Estudiante();
        int id, pos;
        
        HttpSession ses = request.getSession();
        ArrayList<Estudiante> lista = (ArrayList<Estudiante>) ses.getAttribute("listest");
        
        switch(op) {
            case "nuevo":
                request.setAttribute("objest",est);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;
                
            case "editar":
                id = Integer.parseInt(request.getParameter("id"));
                pos = buscarPorId(request, id);
                est = lista.get(pos);
                request.setAttribute("objest",est);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;
            
            case "eliminar":
                id = Integer.parseInt(request.getParameter("id"));
                pos = buscarPorId(request, id);
                if (pos >= 0) {
                    lista.remove(pos);
                }
                request.setAttribute("listest", lista);
                response.sendRedirect("index.jsp");
                break;
                
            default:
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String[] seminarioSelect = request.getParameterValues("seminarios");
        
        HttpSession ses = request.getSession();
        ArrayList<Estudiante> lista = (ArrayList<Estudiante>) ses.getAttribute("listest");
        Estudiante objest = new Estudiante();
        objest.setId(id);
        objest.setFecha(request.getParameter("fecha"));
        objest.setNombres(request.getParameter("nombres"));
        objest.setApellidos(request.getParameter("apellidos"));
        objest.setTurno(request.getParameter("turno"));
        if (seminarioSelect != null) {
            objest.setSeminarios(new ArrayList<>(Arrays.asList(seminarioSelect)));
        } 
      
        
        if (id == 0) {
            int idNew = obtenerId(request);
            objest.setId(idNew);
            lista.add(objest);
        }
        else {
            int pos = buscarPorId(request, id);
            if (pos >= 0 && pos < lista.size()) {
                lista.set(pos, objest);
            }
        }
        
        request.setAttribute("listest", lista);
        response.sendRedirect("index.jsp");
    }
    
    public int buscarPorId(HttpServletRequest request, int id){
        HttpSession ses = request.getSession();
        ArrayList<Estudiante> lista = (ArrayList<Estudiante>) ses.getAttribute("listest");
        
        int pos = -1;
        
        if (lista != null) {
            for (Estudiante ele : lista) {
                ++pos;
                if (ele.getId() == id) {
                    break;
                }
            }
        }
        return pos;
    }
    
    public int obtenerId(HttpServletRequest request) {
        HttpSession ses = request.getSession();
        ArrayList<Estudiante> lista = (ArrayList<Estudiante>) ses.getAttribute("listest");
        
        int idn = 0;
        for (Estudiante ele : lista) {
            idn = ele.getId();
        }
        return idn + 1;
    }
}
