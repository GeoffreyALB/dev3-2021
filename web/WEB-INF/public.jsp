<%-- 
    Document   : public
    Created on : 17 juin 2021, 16:15:12
    Author     : neveR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        *<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>

        <%@include file="menu.jsp" %>

        <div class="container mt-4">
            <h2 class="titre-perso center my-font-family"> Mon espace public</h2>
            <br>
            <div>
                <div class="row">
                    <c:forEach var="n" items="${memoPrive}">
                        <div> class="col-sm-4">
                            <div class="card my-font-family p-2 card-shadow">
                                <div class="row">
                                    <div class="col-sm-10">
                                        <p class="label-perso">Date : ${n.dateCreation}</p>
                                        <p class="text-info">${n.contenu}</p>
                                    </div>
                                        <div class="col-sm-2">
                                            <p> ${n.createur} </p>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
