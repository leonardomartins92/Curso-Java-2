<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Destinos</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>
        
    <div class="container">
        <table class="table table-striped">
            <thead>  
                <tr>
                    <th>Data Inicial</th>
                    <th>Data Final</th>
                    <th>CNPJ da Empresa</th>
                    <th colspan="3">A��o</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${destinos}" var="destino">
                    <tr> 
                        <td><c:out value="${destino.dataInicial}" /></td> 
                        <td><c:out value="${destino.dataFinal}" /></td>  
                        <td><c:out value="${destino.cnpjEmpresa}" /></td>
                        <td><a href="ManterDestinoController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${destino.id}" />" class="btn btn-primary btn-sm">Editar</a></td>
                        <td><a href="ManterDestinoController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${destino.id}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                        
                    </tr>  
                </c:forEach>
            </tbody> 
        </table>
        
        <form action="ManterDestinoController?acao=preparaOperacao&operacao=Adicionar">
            <div class="col-md-2 ">
                <div class="list-group">
                    <a href="ManterDestinoController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success">Adicionar</a>
                   </div>
            </div>
        </form> 

</body>
</html>