<%-- 
    Document   : SeleccionaProductoActualizar
    Created on : 16/10/2020, 08:25:09 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
        <title>Productos Actualizar</title>
    </head>
    <body>
        <%@include file="jspf_FragmentosPag/Titulo.jspf"%>
        
        <%@include file="jspf_FragmentosPag/menuProductos.jspf" %>
        
        <main>
            
            <div class="titulo">
            <h1>Escojer producto a Actualizar</h1>
            <p>Selecciona la canción a actualizar.</p>
        </div>
            
            <form action="editarProducto" method="post">
                <%-- Tabla donde se muestran los datos de todas los productos --%>
                <table class="bicolor">


                    <%-- Títulos de las columnas --%>
                    <tr>
                        <th>&nbsp;</th>
                        <th>Clave</th>
                        <th>Nombre</th>
                        <th>Unidad</th>
                       
                    </tr>

                    <c:forEach items="${listaProductos}" var="producto" >
                        
                        <tr>
                            <td><input type="radio" name="clave" value="${producto.clave}" /></td>
                            <td>${producto.clave}</td>
                            <td>${producto.nombre}</td>
                            <td>${producto.unidad}</td>
                            
                        </tr>
                    </c:forEach>
                </table>
                <br />
                <table class="centrada" >
                    <tr>
                        <%-- Botones enviar --%>
                        <td>
                            <input type="submit" name="boton" value="Continuar" />
                        </td>
                        <%-- Botón limpiar --%>
                        <td>
                            <input type="reset" value="Limpiar" />
                        </td>
                    </tr>
                </table>
            </form>
        </main>
        
        <%@include file="jspf_FragmentosPag/PieSeccion.jspf" %>
    </body>
</html>
