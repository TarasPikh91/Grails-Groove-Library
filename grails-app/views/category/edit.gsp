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
    <g:form action="update" id="${category.id}" class="updateCategory">
        <div class="form-group">
            <label for="categoryName">Category Name:</label>
            <g:textField name="categoryName" class="form-control requireField" id="categoryName" value="${category.categoryName}"/>
        </div>
        <g:actionSubmit value="Update" class="btn btn-default" id="button"/>
    </g:form>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="category/edit.js"/>
</body>
</html>