<%-- 
    Document   : CapturaMaterialDesinventariar
    Created on : 16/10/2020, 08:25:53 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
        <title>Desinventariar Material</title>
    </head>
    <body>
        <%@include file="jspf_FragmentosPag/Titulo.jspf"%>
        
        <%@include file="jspf_FragmentosPag/menuInventarios.jspf" %>
        
        <main>
            <div class="titulo">
                <h1>Desinventariar Material</h1>
                <p>Captura los productos a desinventariar.</p>
            </div>
    
            <form action="desinventariarMaterial" method="post" name="CapturarDesinventariarMaterial" class="inventarioMaterial">
                <div class="tabla">
                    <%--Lista Productos--%>
                    <div class="fila">
                        <div class="celda"> <label for="productosId">Lista de productos*</label></div>
                        <div class="celda">
                            
                            <select name="productoSeleccionado" id="productosId">
                                <%-- La lista productos se encuentran
                                         en el bean listaProductos almacenado en el
                                         objeto session por el servlet obtenProductos. --%>
                                <c:forEach items="${listaMateriales}" var="material" varStatus="opcion">
                                    <option value="${material.clave}">${material}</option>    
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <br>
                    <%--Cantidad del producto--%>
                    <div class="fila">
                        <div class="celda"> <label for="cantidadId">Cantidad*</label> </div>
                        <div class="celda"> <input type="number" id="cantidadId" name="cantidad" value="0" 
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
