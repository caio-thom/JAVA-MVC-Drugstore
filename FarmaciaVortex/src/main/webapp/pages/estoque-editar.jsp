<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>

    <title>Produtos - Editar</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color: #DECFF5;">
        <div  class="container" style="background-color: #DECFF5;" >
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  style="background-color: #DECFF5; ">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/estoque"><img alt="" style="width:136px; height: 30px" src="../resources/img/logovortexmini.png"></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Editar Produto em Estoque</h2>
					
					<form:form modelAttribute="estoqueModel" action="${contextPath}/estoque/${estoqueModel.id}" method="put">
					
						<spring:hasBindErrors name="estoqueModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<form:input type="text" path="nome" id="nome" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="nome"/></font><br/>
							
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<form:input type="number" step="0.01" path="preco" id="preco" class="form-control" maxlength="14" size="15" />
							<font color="red"><form:errors path="preco"/></font><br/>
						</div>
						
                        <div class="form-group">
							<label class="control-label" for="nome">Qtde. em estoque:</label>
							<form:input type="text" path="qtdEstoque" id="qtdEstoque" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="qtdEstoque"/></font><br/>
							
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Descrição:</label>
							<form:textarea id="descricao" class="form-control" path="descricao" rows="4" cols="100" />
							<font color="red"><form:errors path="descricao"/></font><br/>
						</div>
						
						
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Classificação:</label>
							<form:textarea id="classificacao" class="form-control" path="classificacao" rows="4" cols="100" />
							<font color="red"><form:errors path="classificacao"/></font><br/>
						
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Fabricante:</label>
							<form:textarea id="fabricante" class="form-control" path="fabricante" rows="4" cols="100" />
							<font color="red"><form:errors path="fabricante"/></font><br/>
						
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/estoque">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form:form>
					
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>