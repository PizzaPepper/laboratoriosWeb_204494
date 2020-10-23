<%-- 
    Document   : capturaMaterialInventariar
    Created on : 16/10/2020, 08:25:38 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
    <title>JSP Page</title>
</head>

<body>
    <%@include file="jspf_FragmentosPag/Titulo.jspf"%>

    <%@include file="jspf_FragmentosPag/menuInventarios.jspf" %>

    <main>

        <div class="titulo">
            <h1>Inventariar Producto</h1>
            <p>Captura los productos a inventariar.</p>
        </div>

        <form action="inventariarProducto" method="post" name="CapturarInventariarProducto" class="inventarioProducto">
            <div class="tabla">
                <%--Lista Productos--%>
                <div class="fila">
                    <div class="celda"> <label for="productosId">Lista de productos*</label></div>
                    <div class="celda">
                        
                        <select name="ListaProductos" id="productosId">
                            <%-- La lista productos se encuentran
                                     en el bean listaProductos almacenado en el
                                     objeto session por el servlet obtenProductos. --%>
                            <c:forEach items="${listaProductos.lista}" var="producto" varStatus="opcion">
                                <%--
                                        Aun en proceso
                                    <c:choose>
                                        <c:when test="${cancion.genero.cveGenero == genero.cveGenero}" >
                                            <option selected value="${genero.cveGenero}">${genero.nombre}</option>
                                        </c:when>
                                    </c:choose>
                                    --%>
                            </c:forEach>
                            <%--Test, esto se quitara luego de implementar los servlets --%>
                            <option value="producto1">Producto1</option>
                            <option value="producto2">Producto2</option>
                            <option value="producto3">Producto3</option>
                            <option value="producto4">Producto4</option>
                        </select>
                    </div>
                </div>
                <br>
                <%--Cantidad del producto--%>
                <div class="fila">
                    <div class="celda"> <label for="cantidadId">Cantidad*</label> </div>
                    <div class="celda"> <input type="number" id="cantidadId" name="unidad" value="${param.cantidad}" 
                        size="3" min="1" max="999"/></div>
                </div>
                <br>
                <%--Botones--%>
                <div class="tabla">
                    <div class="fila">
                        <%-- Boton enviar --%>
                        <div class="celda">
                            <input type="submit" name="boton" value="Continuar" />
                        </div>
                        <%-- Botón limpiar --%>
                        <div class="celda">
                            <input type="reset" value="Limpiar" />
                        </div>
                    </div>
                </div>

            </div>
        </form>

    </main>


    <%@include file="jspf_FragmentosPag/PieSeccion.jspf" %>
</body>

</html>