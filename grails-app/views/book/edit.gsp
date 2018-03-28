<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/28/2018
  Time: 1:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <h2>Edit book</h2>
    <g:form action="update" id="${book.id}">
        <div class="form-group">
            <lable for="title">Title:</lable>
            <g:textField name="title" class="form-control" value="${book.title}" id="title"/>
        </div>
        <div class="form-group">
            <lable for="countOfPage">Count of page:</lable>
            <g:textField name="countOfPage" class="form-control" value="${book.countOfPage}" id="countOfPage"/>
        </div>
        <div class="form-group">
            <lable for="category">Category:</lable>
            <g:select name="category" class="form-control" from="${onlinelibrary.Category.list()}" value="${book?.category}" optionKey="id" multiple="true" id="category"/>
        </div>
        <g:actionSubmit value="Update" class="btn btn-default"/>
    </g:form>
</div>
</body>
</html>