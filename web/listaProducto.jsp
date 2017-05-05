<%-- 
    Document   : listaProducto
    Created on : 04-may-2017, 13:32:05
    Author     : Alumno IG
--%>

<%@page import="java.io.EOFException"%>
<%@page import="LeroyM.Producto"%>
<%@page import="java.io.*"%>
<%@page import="LeroyM.Fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de productos</title>
    </head>
    <body>
        <h1>Lista de productos</h1>
        <%@include file="html/nav.html" %>
        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="";
            
           
                Fichero f = new Fichero("ficheroProductos.leroy","rb");
                Producto aux = (Producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getId()+"</td>\n"
                            + "<td>"+aux.getNombre()+"</td>\n"
                            + "<td>"+aux.getDescripcion()+"<td>\n"
                            + "<td>"+aux.getPrecio()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = (Producto) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
        
    </body>
</html>
