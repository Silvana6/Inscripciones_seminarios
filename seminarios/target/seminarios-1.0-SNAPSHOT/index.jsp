<%@page import="com.emergentes.modelo.Estudiante"%>
<%@page import="java.util.ArrayList"%>

<%
    if(session.getAttribute("listest") == null){
        ArrayList<Estudiante> listaux = new ArrayList<Estudiante>();
        session.setAttribute("listest", listaux);
    };
    
    ArrayList<Estudiante> lista = (ArrayList<Estudiante>) session.getAttribute("listest");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: blue;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    </head>
    <body>
       
        <h1>Listado de Inscritos</h1>
        <a href = "MainServlet?op=nuevo">NUEVO REGISTRO</a>
        <table border = "1">
            <tr>
                <th>ID</th>
                <th>FECHA</th>
                <th>NOMBRES</th>
                <th>APELLIDOS</th>
                <th>TURNOS</th>
                <th>SEMINARIOS</th>
                <th></th>
                <th></th>
            </tr>
            
            <%
                if(lista != null){
                    for(Estudiante item : lista){
            %>
            
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getFecha() %></td>
                    <td><%= item.getNombres() %></td>
                    <td><%= item.getApellidos() %></td>
                    <td><%= item.getTurno() %></td>
                    <td><%= item.getSeminarios() %></td>

                    <td>
                        <a href="MainServlet?op=editar&id=<%= item.getId() %>">EDITAR</a>
                    </td>
                    <td>
                        <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('¿Está segur@ de eliminar este registro?'))">ELIMINAR</a>
                    </td>
                </tr>
            
            <%                    
                    }
            }
            %>
        </table>    
    </body>
</html>
