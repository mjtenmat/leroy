<%-- 
    Document   : insertaProducto
    Created on : 04-may-2017, 12:34:56
    Author     : Alumno IG
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="LeroyM.Fichero"%>
<%@page import="java.io.*"%>
<%@page import="LeroyM.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Añadir Producto</title>
        
    </head>
   
    <%
            int id;
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            double precio;
            String respuesta;
            
            
            try{
                Fichero f = new Fichero("ficheroProductos.leroy","ab");
                id= Integer.parseUnsignedInt(request.getParameter("id")); 
                precio=Double.parseDouble(request.getParameter("precio"));
                if(nombre==null 
                        || descripcion==null 
                        || request.getParameter("id")==null
                        || request.getParameter("precio")==null)
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    f.escribirObjeto(new Producto(id,nombre,descripcion,precio));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error en los numeros";
            }
            
            
        %>
    <body>
        <h1>Añadir producto</h1>
        <%@include file="html/nav.html" %>
        <h2>Formulario de productos</h2>
        <form action="insertaProducto.jsp" method="POST">
            Id:<input type="text" name="id"><br>
            Nombre:<input type="text" name="nombre"><br>
            Descripción:<input type="text" name="descripcion"><br>
            Precio:<input type="text" name="precio"><br>
            <input type="submit" value="Enviar">
            <input type="reset" value="Reset">
        </form>
        <p><%=respuesta%></p>
              
    </body>
</html>

