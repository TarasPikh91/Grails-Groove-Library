<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/28/2018
  Time: 1:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Books</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <h2>Book List</h2>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Title</th>
                <th scope="col">Count of page</th>
                <th scope="col">Categories</th>
                <th scope="col">Edit</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${books}" var="book">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.countOfPage}</td>
                    <td>${book.category.categoryName}</td>
                    <td><g:link action="edit" id="${book.id}">Edit</g:link></td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <button type="button" class="btn btn-default"><g:link action="create">Add new book</g:link></button>
</div>
</body>
</html>