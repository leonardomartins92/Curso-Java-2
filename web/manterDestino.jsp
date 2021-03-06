<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Destino</title>


        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Destino</h2>    
        
        <div class="col">
            <form  action="ManterDestinoController?acao=confirmaOperacao&operacao=${operacao}" method="post">
               <div class="row g-3 justify-content-md-center">
                <div class="col-md-1">
                    <label for="cod" class="form-label">C�digo</label>
                    <input type="text" name="cod" id="cod" class="form-control" value="<c:out value="${destino.id}"/>" readonly>
                </div>
                   
                   <div class="col-md-2">
                    
                    <label for="inputPacote" class="form-label">Pacote</label>
                    <select class="form-select" name="idPacote" id="idPacote">
                        <c:forEach items="${pacotes}" var="pacote">
                           <option <c:if test = "${pacote.id == destino.idPacote}">selected</c:if>> <c:out value="${pacote.id}"/> </option> 
                        </c:forEach>
                    </select>   
                </div>
                        
                <div class="col-md-3">
                    <label for="inputOrigin" class="form-label">Data Inicial</label>
                    <input type="date" name="dataInicial" id="inputOrigin" class="form-control" value="<c:out value="${destino.dataInicial}"/>"  >
                </div>
               </div>
                <div class="row g-3 justify-content-md-center">
                <div class="col-md-3">
                    <label for="inputDestiny" class="form-label">Data Final</label>
                    <input type="date" name="dataFinal" id="inputDestiny" class="form-control" value="<c:out value="${destino.dataFinal}"/>" >
                </div>
                
                <div class="col-md-3">
                    <label for="inputCompany" class="form-label">Empresa</label>
                    <select id="inputCompany" class="form-select" name="cnpjEmpresa">
                        
                        <c:forEach items="${empresas}" var="empresa">
                           <option value="${empresa.cnpj}" <c:if test = "${destino.cnpjEmpresa == empresa.cnpj}">selected</c:if>> <c:out value="${empresa.nome}"/> </option> 
                        </c:forEach>
                    </select>
                </div>
                
                </div><br>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
                </div>
        </form>
    </div>
    <script src="./Scripts/main.js"></script>
            
</body>
</html>