<%-- 
    Document   : operacion
    Created on : 6/10/2016, 08:04:24 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css.css">
        <link href='https://fonts.googleapis.com/css?family=ABeeZee' rel='stylesheet' type='text/css'>
        <title>Resultado</title>
    </head>
    <body class="fondo">
        <div class="centrado">
        <%@page import="java.sql.*, java.io.*"%>
        <% 
            int num1 =Integer.parseInt( request.getParameter("num1"));
            int num2 =Integer.parseInt( request.getParameter("num2"));
            int result; 
            int opc = Integer.parseInt(request.getParameter("opc"));
            
            switch (opc){
                case 2:
                        result = num1 + num2;
                        out.print("<h1 class='titulo'>El resultado de tu operacion es: </h1><text class='texto2'>" + result+"</text>");
                    break;
                case 3:
                        result = num1 - num2;
                        out.print("<h1 class='titulo'>El resultado de tu operacion es: </h1><text class='texto'>" + result+"</text>");
                    break;
                case 1:
                        result = num1 * num2;
                       out.print("<h1 class='titulo'>El resultado de tu operacion es: </h1><text class='texto'>" + result+"</text>");
                    break;
                case 4:
                    if(num2 != 0){
                        result = num1 / num2;
                        out.print("<h1 class='titulo'>El resultado de tu operacion es: </h1><text class='texto'>" + result+"</text>");
                    }
                    else {
                        out.print("<h1 class='titulo'>El resultado de tu operacion es: Indeterminado</h1><text class='texto'></text>");
                    }
                    break;
         
            }
            
           
       %> 
       <br>
       <br>
       <br>
       <br>
       <br>
       <form class="formulario" name="calcForm" method="post" action="calculadora.jsp">
           <input type=submit class="submit" name=volver value="regresar" >
       </form>
        </div>
    </body>
</html>
