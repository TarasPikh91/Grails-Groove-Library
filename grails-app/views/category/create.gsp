<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 9:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new Category</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
<g:include view="index.gsp"/>
    <div class="row">
    <div class="col-md-6">
        <h2>Create new category</h2>
        <g:form action="save" method="post" class="saveCategory">
            <div class="form-group">
                <label for="categoryName">Category Name:</label>
                <g:textField name="categoryName" class="form-control requireField droppable" id="categoryName"/>
            </div>
            <g:actionSubmit value="Save" class="btn btn-default" id="button"/>
        </g:form>
    </div>
    <div class="col-md-6">
        <h2>Category to create:</h2>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">category name:</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Comedy</td>
                </tr>
            <tr>
                <td>Drama</td>
            </tr>
            <tr>
                <td>Romance</td>
            </tr>
            <tr>
                <td>Mystery</td>
            </tr>
            <tr>
                <td>Horror</td>
            </tr>
            <tr>
                <td>Guide</td>
            </tr>
            <tr>
                <td>Travel</td>
            </tr>
            <tr>
                <td>Children</td>
            </tr>
            <tr>
                <td>Health</td>
            </tr>
            <tr>
                <td>Science</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</div>

<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="jquery-ui.js"/>
<g:javascript src="category/create.js"/>
</body>
</html>