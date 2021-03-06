<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de Cliente</title>
        
        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Cliente</h2>
        
    <div class="col">
        <form  action="ManterClienteController?acao=confirmaOperacao&operacao=${operacao}" method="post">
            
            <div class="row g-3 justify-content-md-center">
            <div class="col-4">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" name="nome" placeholder="" value="${cliente.name}">
            </div>
            <div class="col-2">
                <label for="cpf" class="form-label">CPF</label>
                <input type="text" class="form-control" id="cpf" name="cpf" placeholder="" value="${cliente.cpf}">
            </div>

            <div class="col-md-2 ">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4" name="email" value="${cliente.email}">
            </div>
            </div>
            <div class="row g-3 justify-content-md-center">
            <div class="col-md-2">
                <label for="inputTelefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="inputTelefone" name="telefone" value="${cliente.telefone}">
            </div>
            <div class="col-md-2">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" name="cep" maxlength="9" value="${cliente.cep}">
            </div>
            <div class="col-md-2">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" name="uf" id="uf" value="${cliente.uf}">
            </div>

            <div class="col-md-2">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" name="localidade" id="localidade" value="${cliente.cidade}">
            </div>
            </div>
            <div class="row g-3 justify-content-md-center">
            <div class="col-md-3">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" name="logradouro" id="logradouro" placeholder="" value="${cliente.logradouro}">
            </div>
            <div class="col-md-2">
                <label for="numero" class="form-label">N�mero</label>
                <input type="text" class="form-control" name="numero" id="numero" placeholder="" value="${cliente.numero}">
            </div>
            <div class="col-3">
                <label for="numero2" class="form-label">Complemento</label>
                <input type="text" class="form-control" name="complemento" id="numero2" placeholder="" value="${cliente.complemento}">
            </div>
            </div><br>
            <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
            
            <div class="col-12">
                <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
            </div>
        </form>

    </div>

</div>

</div>
<script src="./Scripts/main.js"></script>
</body>
</html>


