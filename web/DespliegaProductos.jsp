<%-- 
    Document   : DespliegaProductos
    Created on : 21/10/2020, 05:45:20 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
        <title>Despliega Productos</title>
    </head>
    <body>
        <%@include file="jspf_FragmentosPag/Titulo.jspf"%>

        <%@include file="jspf_FragmentosPag/menuProductos.jspf" %>

        <main>

            <div class="titulo">
                <h1>Desplegar productos</h1>
                <p>Muestra los datos en una lista de productos.</p>
            </div>


            <table class="bicolor" >

                <%-- Título de la tabla --%>
                <caption>
                    ${listaProductos.tituloTabla}
                </caption>

                <tr>
                    <%-- Títulos de las columnas --%>
                    <th>Clave</th>
                    <th>Nombre</th>
                    <th>Unidades</th>
                </tr>

                <c:forEach items="${listaProductos.lista}" var="producto">
                    <tr>
                        <td>${cancion.clave}aaa</td>
                        <td>${cancion.nombre}bbb</td>
                        <td>${cancion.unidad}ccc</td>
                    </tr>
                </c:forEach>
            </table>
        </main>

        <%@include file="jspf_FragmentosPag/PieSeccion.jspf" %>
    </body>
</html>
