
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <link rel="stylesheet" href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
    </head>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            
            
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("index.jsp");
            }
            
            %>
             <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">LRDemo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Display Users</a>
      </li>
      <li class="nav-item">
        <form action="Logout" method="post">
         <input type="submit" class="btn btn-secondary nav-link" value="Logout" name="logout">
            </form>
      </li>
    </ul>
  </div>
        </nav><br><br>
            <h1>Hello ${username}</h1><br>
           
    </body>
</html>
