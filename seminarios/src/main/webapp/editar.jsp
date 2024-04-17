<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante reg = (Estudiante) request.getAttribute("objest");
    ArrayList<String> seminariosSeleccionados = reg.getSeminarios();
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
                <td><input type="text" name="id" value="<%= reg.getId() %>" readonly></td>
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
        <label for="seminarios">Seminarios:</label><br>
            <input type="checkbox" id="ia" name="seminarios" value="Inteligencia Artificial" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Inteligencia Artificial") ? "checked" : "" %>>
            <label for="ia">Inteligencia Artificial</label><br>
            <input type="checkbox" id="ml" name="seminarios" value="Machine Learning" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Machine Learning") ? "checked" : "" %>>
            <label for="ml">Machine Learning</label><br>
            <input type="checkbox" id="sa" name="seminarios" value="Simulacion con Arena" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Simulación con Arena") ? "checked" : "" %>>
            <label for="sa">Simulación con Arena</label><br>
            <input type="checkbox" id="re" name="seminarios" value="Robotica Educativa" <%= seminariosSeleccionados != null && seminariosSeleccionados.contains("Robótica Educativa") ? "checked" : "" %>>
            <label for="re">Robótica Educativa</label><br>
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

