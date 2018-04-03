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
        <div class="col-md-4 center-block">
            <h4>Informe seus dados</h4>
            <form action="calculoIMC" method="POST">
                <div class="form-group">
                    <label for="altura">Altura:</label>
                    <input type="text" class="form-control" name="altura" id="altura" placeholder="Exemplo: 1.60">
                    <p class="small">Utilize o ponto, não use a virgula</p>
                </div>
                <div class="form-group">
                    <label for="peso">Peso:</label>
                    <input type="text" class="form-control" name="peso" id="peso" placeholder="Exemplo: 60">
                    <p class="small">Utilize somente número inteiro sem virgula e ponto</p>
                </div>
                <button type="submit" class="btn btn-info">Calcular</button>
            </form>
        </div>
    </body>
</html>
