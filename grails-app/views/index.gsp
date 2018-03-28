<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Online Library</title>
	</head>
	<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="/OnlineLibrary">Home <span class="sr-only">(current)</span></a>
				<a class="nav-item nav-link" <g:link controller="book">Book</g:link></a>
				<a class="nav-item nav-link" <g:link controller="author">Author</g:link></a>
				<a class="nav-item nav-link" <g:link controller="category">Category</g:link></a>
			</div>
			<div class="navbar-nav ml-auto">
			<g:loginControl class="nav-item nav-link login"/>
			</div>
		</div>
	</nav>
	</body>
</html>
