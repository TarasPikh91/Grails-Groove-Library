<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 9:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit category</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <h2>Edit category</h2>
    <g:form action="update" id="${category.id}">
        <div class="form-group">
            <label for="categoryName">Category Name:</label>
            <g:textField name="categoryName" class="form-control" id="categoryName" value="${category.categoryName}"/>
        </div>
        <g:actionSubmit value="Update" class="btn btn-default"/>
    </g:form>
</div>
</body>
</html>