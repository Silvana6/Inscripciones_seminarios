<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante reg = (Estudiante) request.getAttribute("objest");
%>

<%@page import="com.emergentes.modelo.Estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 50%;
        }
        table td {
            padding: 8px;
        }
        input[type="text"],
        input[type="date"],
        input[type="radio"],
        input[type="checkbox"],
        input[type="submit"] {
            padding: 6px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .opcion {
            display: inline-block;
            margin-right: 20px;
        }
    </style>
</head>
<body>
    <h1>Registro en Seminarios</h1>
    <form action="MainServlet" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" value="<%= reg.getId() %>"></td>
            </tr>
            <tr>
                <td>FECHA</td>
                <td><input type="date" name="fecha" value="<%= reg.getFecha() %>"></td>
            </tr>
            <tr>
                <td>NOMBRES</td>
                <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
            </tr>
            <tr>
                <td>APELLIDOS</td>
                <td><input type="text" name="apellidos" value="<%= reg.getApellidos() %>"></td>
            </tr>
            <tr>
                <td>TURNO</td>
                <td>
                    <div class="opcion">
                        <input type="radio" name="turno" value="MAÑANA" id="op1">
                        <label for="op1">MAÑANA</label>
                    </div>
                    <div class="opcion">
                        <input type="radio" name="turno" value="TARDE" id="op2">
                        <label for="op2">TARDE</label>
                    </div>
                    <div class="opcion">
                        <input type="radio" name="turno" value="NOCHE" id="op3">
                        <label for="op3">NOCHE</label>
                    </div>
                </td>
            </tr>
<tr>
    <td>SEMINARIOS DISPONIBLES</td>
    <td>
        <input type="checkbox" name="seminario" value="Inteligencia Artificial" id="op1" <% if (reg.getSeminarios() != null && reg.getSeminarios().contains("Inteligencia Artificial")) out.print("checked"); %>>
        <label for="op1">Inteligencia Artificial</label><br>
        <input type="checkbox" name="seminario" value="Machine Learning" id="op2" <% if (reg.getSeminarios() != null && reg.getSeminarios().contains("Machine Learning")) out.print("checked"); %>>
        <label for="op2">Machine Learning</label><br>
        <input type="checkbox" name="seminario" value="Simulación con Arena" id="op3" <% if (reg.getSeminarios() != null && reg.getSeminarios().contains("Simulación con Arena")) out.print("checked"); %>>
        <label for="op3">Simulación con Arena</label><br>
        <input type="checkbox" name="seminario" value="Robótica Educativa" id="op4" <% if (reg.getSeminarios() != null && reg.getSeminarios().contains("Robótica Educativa")) out.print("checked"); %>>
        <label for="op4">Robótica Educativa</label>
    </td>
</tr>

            <tr>
                <td></td>
                <td><input type="submit" value="ENVIAR REGISTRO"></td>
            </tr>
        </table>
    </form>
</body>
</html>

