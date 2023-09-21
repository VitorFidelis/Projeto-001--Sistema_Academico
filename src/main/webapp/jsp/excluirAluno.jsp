<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/ExcluirAluno.css" media="screen" />
<meta charset="UTF-8">
<title>Sistema Acadêmico</title>
</head>
<body>
	<!-- Start navbar -->
	<nav class="navbar navbar-expand-sm">
  		<div class="container-fluid">
    		<a class="navbar-brand" style="color: white;" href="index.html"> 
      		<img src="images/logo_principal.png" alt="Avatar Logo" style="width:55px; background-color: white; padding: 3px;" class="rounded-pill"> 
      		Sistemas Academico
    		</a>
    		<i class="bi bi-arrow-bar-left"><a href="index.html">Página Principal</a></i> 
  		</div>
  	</nav> 
    <!-- End navbar -->
    <h3>page/excluir aluno</h3>
	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<% 	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");	%>
	<div class="container">
		<form class="row g-2" action="ServletAluno?cmd=excluir" method="post">
		<input type="hidden" name="cmd" value="incluir">
		  <div class="col-md-4">
			    <label for="inputRa" class="form-label">RA:</label>
			    <input type="text" class="form-control" id="inputRa" name="txtRa" value="<%=aluno.getRa()%>" readonly="readonly" />
			  </div>
			  <div class="col-md-4">
			    <label for="inputNome" class="form-label">Nome:</label>
			    <input type="text" class="form-control" id="inputNome" name="txtNome" value="<%=aluno.getNome()%>" readonly="readonly" />
			  </div>
			  <div class="col-md-4">
			    <label for="inputEmail" class="form-label">E-mail:</label>
			    <input type="email" class="form-control" id="inputEmail" name="txtEmail" value="<%=aluno.getEmail()%>" readonly="readonly" />
			  </div>
			  <div class="col-md-4">
			    <label for="inputEndereco" class="form-label">Endereço:</label>
			    <input type="text" class="form-control" id="inputEndereco" name="txtEndereco" value="<%=aluno.getEndereco()%>" readonly="readonly" />
			  </div>
			  <div class="col-md-4">
			    <label for="inputDataNascimento" class="form-label">Data de Nascimento:</label>
			    <input type="date" class="form-control" id="inputDataNascimento" name="txtData" value="<%=aluno.getDataNascimento()%>" readonly="readonly" />
			  </div>
			  <div class="col-md-4">
			  	<label for="inputPeriodo" class="form-label">Periodo:</label>
			  	<input type="text" class="form-control"id="inputPerido" name="txtIdade" value="<%=aluno.getPeriodo()%>" readonly="readonly" />
			  </div>
			  <div class="col-12">
    			<button type="submit" value="Confirmar Exclusão" class="btn btn-primary">Excluir</button>
  			  </div>
		</form>
	</div>
</body>
</html>
