<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Familybook</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">Familytree</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Strona główna <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>

    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/familyMember/add">Dodaj członka rodziny<span class="sr-only">(current)</span></a>
        </li>
    </ul>

    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <div class="dropdown">
                <a class="btn btn-secondary dropdown-toggle" href="/familyMember/showAll" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Nasza rodzina
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="/familyMember/showAll">Lista</a>
                    <a class="dropdown-item" href="#">Drzewo</a>
                    <a class="dropdown-item" href="#">Mapa</a>
                </div>
            </div>
        </li>
    </ul>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/home/add">Dodaj dom<span class="sr-only">(current)</span></a>
        </li>
    </ul>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/home/showAll">Nasze domy<span class="sr-only">(current)</span></a>
        </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    &nbsp&nbsp
    <a href="/logout" class="btn btn-primary active" role="button" aria-pressed="true">Wyloguj</a>
    </div>
</nav>

<p class="h2">Takie mamy tu domy:</p>
<div class="row align-items-left" id="all-members">
    <div class="col"/>
    <div class="col">
        <table class="table table-striped">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Nazwa</th>
                <th scope="col">Miasto</th>
                <th scope="col">Edytuj</th>
                <th scope="col">Usuń</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${homes}" var="home">
                <tr>
                    <td><a href="homeDetails/${home.id}">${home.name}</a></td>
                    <td><a href="homeDetails/${home.id}">${home.address}</a></td>
                    <td><a href="homeDetails/${home.id}">${home.town}</a></td>
                    <td><a href="/editHome/${home.id}">Edytuj</a></td>
                    <td><a href="/deleteHome/${home.id}">Usuń</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col"/>
</div>

</body>
</html>