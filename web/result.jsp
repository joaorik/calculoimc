<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado IMC</title>
    </head>
    <body>
        <b>Voce está:</b>
        <%
            String condicao = (String) request.getAttribute("condicao");
            out.print(condicao);
        %>
        <br />
        <b>Seu IMC:</b>
        <%
            Float imc = (Float) request.getAttribute("imc");
            out.print(imc);
        %>
    </body>
</html>
