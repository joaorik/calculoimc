<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Calculo IMC</title>
        <!-- CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .center-block {
                display: block;
                margin-left: auto;
                margin-right: auto;
            }
        </style>
    </head>
    <body>
        <% String condicao = (String) request.getAttribute("condicao"); %>
        <% Float imc = (Float) request.getAttribute("imc"); %>

        <div class="col-md-4 center-block">
            <h4 class="text-center">Seus dados</h4>

            <div class="form-group">
                <b>Condição:</b>
                <input type="text" class="form-control" readonly value="<% out.print(condicao); %>">
            </div>
            <div class="form-group">
                <b>IMC:</b>
                <input type="text" class="form-control" readonly value="<% out.print(imc);%>">
            </div>

            <a href="/calculoimc">Voltar</a>
        </div>
    </body>
</html>
