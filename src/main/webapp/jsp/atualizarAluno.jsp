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
<link rel="stylesheet" type="text/css" href="css/AtualizarAluno.css" media="screen" />
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
  	<h3>page/atualizar</h3>
    <!-- End navbar -->
	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<!--Start Form-->
	<div class="container">
		<form class="row g-2" action="ServletAluno?cmd=atualizar" method="post">
		<input type="hidden" name="cmd" value="incluir">
		  <div class="col-md-4">
			    <label for="inputRa" class="form-label">RA:</label>
			    <input type="text" class="form-control" id="inputRa" name="txtRa" value="<%=aluno.getRa()%>" readonly="readonly">
			  </div>
			  <div class="col-md-4">
			    <label for="inputNome" class="form-label">Nome:</label>
			    <input type="text" class="form-control" id="inputNome" name="txtNome" value="<%=aluno.getNome()%>">
			  </div>
			  <div class="col-md-4">
			    <label for="inputEmail" class="form-label">E-mail:</label>
			    <input type="email" class="form-control" id="inputEmail" placeholder="email@exemplo.com.br" name="txtEmail" value="<%=aluno.getEmail()%>">
			  </div>
			  <div class="col-md-4">
			    <label for="inputEndereco" class="form-label">Endereço:</label>
			    <input type="text" class="form-control" id="inputEndereco" placeholder="R.exemplo or AV.exemplo" name="txtEndereco" value="<%=aluno.getEndereco()%>">
			  </div>
			  <div class="col-md-4">
			    <label for="inputDataNascimento" class="form-label">Data de Nascimento:</label>
			    <input type="date" class="form-control" id="inputDataNascimento" name="txtData" value="<%=aluno.getDataNascimento()%>">
			  </div>
			  <div class="col-md-4">
			    <label for="inputPerido" class="form-label">Período</label>
			    <select id="inputPerido" class="form-select" name="cmbPeriodo">
			      <option selected><%=aluno.getPeriodo()%></option>
			      <option>Manhã</option>
			      <option>Tarde</option>
			      <option>Noite</option>
			    </select>
			  </div>
			  <div class="col-12">
			    <button type="submit" class="btn btn-primary" value="Confirmar Atualização">Atualizar</button>
			  </div>
		</form>
	</div>
	
	<!--End Form-->
</body>
</html>
