<%-- 
    Document   : index
    Created on : 04-may-2017, 11:53:57
    Author     : Alumno IG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="cabecera">
        <%@include file="html/nav.html" %>
        </div>
        <div class="opciones">
        <h2>Opciones</h2>
        <ul>
            <li><a href="listaProducto.jsp">Listado de productos</a></li>
            <li><a href="insertaProducto.jsp">Añadir productos</a></li>
            
        </ul>
        </div>
    </body>
</html>
