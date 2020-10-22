<%-- 
    Document   : capturaClave
    Created on : 16/10/2020, 08:21:48 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
    <title>Captura Producto</title>
</head>

<body>
    <%@include file="jspf_FragmentosPag/Titulo.jspf"%>

    <%@include file="jspf_FragmentosPag/menuProductos.jspf" %>

    <main>
        <div class="titulo">
            <h1>Capturar Clave</h1>
            <p>Captura la clave de un producto agregar/editar al catálogo de productos.</p>
        </div>

        <form action="obtenProducto" method="post" name="CapturaClave" id="form_CapturaClave">
            <div class="tabla">
                <div class="fila">
                    <div class="celda"><label for="claveId">Clave*</label></div>
                    <div class="celda">
                        <input type="text" id="claveId" name="clave" value="${param.clave}" size="13" maxlength="13"
                            placeholder="ABC1234" required />
                    </div>
                </div>
            </div>
            <br>
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


        </form>
    </main>

    <%@include file="jspf_FragmentosPag/PieSeccion.jspf" %>
</body>

</html>