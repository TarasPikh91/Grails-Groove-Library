<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/28/2018
  Time: 1:37 PM
--%>

<%@ page import="onlinelibrary.Category" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${createLinkTo(dir: 'css', file: 'jquery-ui.css')}">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <div class="row">
        <div class="col-md-6">
            <h2>Create new book</h2>
            <g:form action="save" method="post" class="saveBook">
                <div class="form-group">
                    <lable for="title">Title:</lable>
                    <g:textField name="title" class="form-control requireField droppable" id="title"/>
                </div>
                <div class="form-group">
                    <lable for="countOfPage">Count of page:</lable>
                    <g:textField name="countOfPage" class="form-control requireField" id="countOfPage"/>
                </div>
                <div class="form-group">
                    <lable for="category">Category:</lable>
                    <g:select from="${Category.list()}" optionKey="id" id="category" name="category" multiple="true" class="form-control requireField droppable"></g:select>
                </div>
                <g:actionSubmit value="Save" class="btn btn-default" id="button"/>
            </g:form>
        </div>
        <div class="col-md-6">
            <h2>Categories</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>category name:</th>
                    </tr>
                </thead>
                <tbody>
                <g:each in="${Category.list()}" var="category">
                        <tr>
                            <td class="draggable">${category.categoryName}</td>
                        </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery-ui.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="book/create.js"/>
</body>
</html>