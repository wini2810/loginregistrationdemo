
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginRegistrationDemo</title>
        <link rel="stylesheet" href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">LRDemo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Login <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registration.jsp">Registration</a>
      </li>
    </ul>
  </div>
        </nav><br><br>
        <div class="container">
            <div class="col-lg-6">
        <form action="Login" method="post">
  <fieldset>
      <legend><u>Sign In Now</u></legend><br>
    <div class="form-group">
      <label for="exampleInputEmail1">UserName</label>
      <input class="form-control" name="uname" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username" type="text">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass" type="password">
    </div>
    </fieldset>
            <input type="submit" class="btn btn-primary" value="Login" name="submit">
  </fieldset>
</form>
            </div>
        </div>
    </body>
</html>
