<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 9:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List categories</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
<h2>List categories</h2>
<table class="table">
    <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${categories}" var="category">
            <tr>
                <td>${category.categoryName}</td>
                <td><g:link action="edit" id="${category.id}">Edit</g:link></td>
                <td><g:link action="delete" id="${category.id}">Delete</g:link></td>
            </tr>
        </g:each>
    </tbody>
</table>
<button type="button" class="btn btn-default"><g:link action="create">Create new category</g:link></button>
</div>
</body>
</html>