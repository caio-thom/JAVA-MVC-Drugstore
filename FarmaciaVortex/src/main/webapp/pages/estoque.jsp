<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Estoque Farmácia Vortex</title>
    
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
                        <a href="${contextPath}/estoque"><img alt="" style="width:136px; height: 30px" src="./resources/img/logovortexmini.png"></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
        <div class="container">
        <div class="row">
            <div class="col-md-12"">
				<div style="width: 100%; height: 50px; text-align: center; ">
				<h1 style="margin: 20 auto">Estoque Farmácia Vortex</h1>
				</div>
				<p class="toolbar">
				
					<a class="create btn btn-default" href="${contextPath}/estoque/form?page=estoque-novo">+ Adicionar Produto no Estoque</a>
	
					<span class="alert"></span>
				</p>
				
				<c:if test="${not empty messages}">
					<h3 class="alert alert-warning">${messages}</h3>
				</c:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
							<th data-field="name">Nome</th>
							<th data-field="forks_count">Qtde. em Estoque</th>
							<th data-field="forks_count">Preço</th>
							<th class="actions" width="220">Ações</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${estoque}" var="estoque">
					<tr>
							<td>${estoque.nome}</td>
							<td>${estoque.qtdEstoque}</td>
							<td>${estoque.preco}</td>
							
							<td class="actions">
							
								<form:form action="${contextPath}/estoque/${estoque.id}" method="delete">
								
									<a class="btn btn-success btn-xs" href="${contextPath}/estoque/${estoque.id}">Detalhes</a>
									<a class="btn btn-warning btn-xs" href="${contextPath}/estoque/form?page=estoque-editar&id=${estoque.id}">Editar</a>
									<input type="submit" value="Excluir" class="btn btn-danger btn-xs">
								</form:form>
								
							</td>
						</tr>
					</c:forEach>
					
                    </tbody>
				</table>
            </div>
        </div>
		<hr>
    </div>
    
     <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>
    

</body>
</html>