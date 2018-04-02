<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 11:13 PM
--%>

<%@ page import="onlinelibrary.Book" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Author</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${createLinkTo(dir: 'css', file: 'jquery-ui.css')}"/>
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <div class="row">
    <div class="col-md-6">
<h2>Create new author</h2>
<g:form action="save" method="post" class="saveAuthor">
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <g:textField name="fullName" class="form-control requireField" id="fullName"/>
    </div>
        <div class="form-group">
        <label for="Books">Books:</label>
                <g:select from="${onlinelibrary.Book.list()}" optionKey="id" name="book" class="form-control requireField" multiple="true" id="Books"/>
        </div>
    <g:actionSubmit value="Save" class="btn btn-default" id="button"/>
</g:form>
    </div>
    <div class="col-md-6">
        <h2>Books</h2>
        <table class="table">
            <tbody>
                <g:each in="${Book.list()}" var="book">
                 <tr>
                     <td>${book.title}</td>
                </tr>
                </g:each>
            </tbody>
        </table>
    </div>
</div>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="author/create.js"/>
</body>
</html>