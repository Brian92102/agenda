<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
 <title>Spring 3 MVC Series - Contact Manager</title>
 <style type="text/css">
 body {
 font-family: sans-serif;
 }
 .data, .data td {
 border-collapse: collapse;
 width: 80%;
 border: 1px solid #aaa;
 margin: 2px;
 padding: 2px;
 }
 .data th {
 font-weight: bold;
 background-color: #5C82FF;
 color: white;
 }
 </style>
</head>
<body>
<h2><spring:message code="label.title"/></h2>
<form:form method="post" action="add.html" commandName="contact">
<table>
 <tr>
 <td><form:label path="firstname"><spring:message code="label.firstname"/></form:label></td>
 <td><form:input path="firstname" type="text" /></td> 
 </tr>
 <tr>
 <td><form:label path="lastname"><spring:message code="label.lastname"/></form:label></td>
 <td><form:input path="lastname" type="text"/></td>
 </tr>
 <tr>
 <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
 <td><form:input path="email"  type="email"/></td>
 </tr>
 <tr>
 <td><form:label path="telephone"><spring:message code="label.telephone"/></form:label></td>
 <td><form:input path="telephone" type="number"/></td>
 </tr>
 <tr>
 <td colspan="2">
 <input type="submit" value="<spring:message code="label.addcontact"/>"/>
 </td>
 </tr>
</table> 
</form:form>

<h3>Contactos</h3>
<c:if test="${!empty contactList}">
<table class="data">
<tr>
 <th><spring:message code="label.lastname"/></th>
 <th><spring:message code="label.firstname"/></th>
 <th><spring:message code="label.email"/></th>
 <th><spring:message code="label.telephone"/></th>
 <th>&nbsp;</th>
</tr>
<c:forEach items="${contactList}" var="contact">
 <tr>
 <td>${contact.lastname} </td>
 <td> ${contact.firstname}</td>
 <td>${contact.email}</td>
 <td>${contact.telephone}</td>
 <td><a href="delete/${contact.id}">Eliminar</a></td>
 <td><a href="edit/${contact.id}">Editar</a></td>
 </tr>
</c:forEach>
</table>
</c:if>

</body>
</html>