<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo IMC</title>
    </head>
    <body>
        <center>
            <h2>Informe seus dados</h2>
            <form method="GET" action="calculoIMC">
                    Altura:
                    <input type="text" name="altura" /><br><br>
                    Peso:
                    <input type="text" name="peso" /><br><br>
                    <input type="submit" value="Calcular" />

            </form>
        </center>
    </body>
</html>
