<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Estoque Vortex - Detalhe</title>
    
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
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Produto</h2>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<b style="font-size: large;">${estoque.nome}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<label class="label label-default" style="font-size: large; background-color:#9C5BFA;">${estoque.preco}</label>
						</div>
						
                        <div class="form-group">
							<label class="control-label" for="qtdEstoque">Qtde. em estoque:</label>
							<label class="label label-default" style="font-size: large; background-color:#9C5BFA;">${estoque.qtdEstoque}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Descrição:</label>
							<label class="label label-default" style="font-size: large; background-color:#9C5BFA;">${estoque.descricao}</label>
						</div>
											
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Classificação:</label>
							<label class="label label-default" style="font-size: large; background-color:#9C5BFA;">${estoque.classificacao}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mensagem">Fabricante:</label>
							<label class="label label-default" style="font-size: large; background-color:#9C5BFA;">${estoque.fabricante}</label>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/estoque">Voltar</a>
                            
                        <br>
                        <br>
					
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