<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" defer></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" defer></script>
<title>Matricular Disciplinas </title>
</head>
<body>
	<form action="listaDisciplinas" method="GET">
		<label>Aluno: </label>
		<select name="ra">
			<c:forEach var="aluno" items="${alunos }">
				<option value="${aluno.ra }">
					<c:out value="${aluno.nome }" />
				</option>
			</c:forEach>
		</select>
		<input type="submit" value="Listar"/>
	</form>
		
	<form action="matricula" method="POST" class="row form">
		<input type="hidden" name="ra" value="<c:out value='${aluno.ra }' />"/>
		<c:forEach var="disciplina" items="${disciplinas }">
			<c:out value="${disciplina.nome }"></c:out>
			<c:out value="${disciplina.diaSemana }"></c:out>
			<input type="checkbox" name="id" value="<c:out value='${disciplina.id }'/>"/>
		</c:forEach>
		<input type="submit" />
	</form>
	
</body>
</html>