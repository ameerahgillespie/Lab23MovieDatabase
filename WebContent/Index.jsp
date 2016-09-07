<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.blockhustler.lab23.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="datasrc" driver="com.mysql.jdbc.Driver"
	url="${DBsettings.url}" user="${DBsettings.user}" password="${DBsettings.pass}" />
		
<sql:query dataSource="${datasrc}" var="result">
SELECT *FROM moviestable;
</sql:query> 

<c:out value= "${DBsettings.url}"/>
<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Genre</th>
		<th>Ratings</th>
	</tr>
	
	<c:forEach var="row" items="${result.rows}">

	<tr>
		<td><c:out value="${row.ID}" /></td>
		<td><c:out value="${row.name}" /></td>
		<td><c:out value="${row.genre}" /></td>
		<td><c:out value="${row.ratings}" /></td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>