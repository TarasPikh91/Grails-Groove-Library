<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 10:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List Authors</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <h2>Authors list</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">FullName</th>
            <th scope="col">Books</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${authors}" var="author">
            <tr class="authorRow">
                <td>${author.fullName}</td>
                <td>${author.book.title}</td>
                <td><g:link action="edit" id="${author.id}">Edit</g:link></td>
                <td><g:link action="delete" id="${author.id}">Delete</g:link></td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <button type="button" class="btn btn-default"><g:link action="create">Add new author</g:link></button>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="author/list.js"/>
</body>
</html>