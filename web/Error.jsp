<%-- 
    Document   : Error
    Created on : 16/10/2020, 08:26:38 PM
    Author     : eliu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilos.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <main>
            <img src="img/kisspng-portable-network-graphics-computer-icons-error-ima-soylent-red-error-7-icon-free-soylent-red-error-5b7d3124522e38.6097664515349312363366.png" width="512" height="512" alt="kisspng-portable-network-graphics-computer-icons-error-ima-soylent-red-error-7-icon-free-soylent-red-error-5b7d3124522e38.6097664515349312363366"/>
            <h1>Página de Error</h1>
            <br />
            <table> 
                <tr>
                    <th >Error:</th>
                    <td >
                        ${pageContext.exception.message}
                    </td>
                </tr>
                <tr>
                    <th >Causa:</th>
                    <td >
                        ${pageContext.exception.cause.message}
                    </td>
                </tr>
            </table>
        </main>
    </body>
</html>
