

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>LoginRegistrationDemo</title>
        <link rel="stylesheet" href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
    </head>
    <body>
       <% String message = (String)request.getAttribute("alertMsg");%>
       <script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">LRDemo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Login</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="registration.jsp">Registration <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
        </nav><br><br>
        <div class="container">
            <div class="col-lg-6">
        <form action="Registration" method="post">
  <fieldset>
      <legend><u>Sign Up Now!</u></legend><br>
    <div class="form-group">
      <label for="exampleInputFirstName1">Enter your First Name</label>
      <input class="form-control" name="fname" id="exampleInputFirstName1" aria-describedby="firtnameHelp" placeholder="First Name" type="text">
    </div>
    <div class="form-group">
      <label for="exampleInputLastName1">Enter your Last Name</label>
      <input class="form-control" name="lname" id="exampleInputLastName1" aria-describedby="lastnameHelp" placeholder="Last Name" type="text">
    </div>
      <div class="form-group">
      <label for="exampleInputContactNo1">Enter your Contact No.</label>
      <input class="form-control" name="cno" id="exampleInputContactNo1" aria-describedby="contactnoHelp" placeholder="Contact No" type="number" pattern=".{10}" required>
    </div>
      <div class="form-group">
      <label for="exampleInputEmail1">Enter your Email Address</label>
      <input class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Address" type="email">
    </div>
      <div class="form-group">
      <label for="exampleInputUserName1">Enter suitable User Name</label>
      <input class="form-control" name="uname" id="exampleInputUserName1" aria-describedby="usernameHelp" placeholder="Username" type="text">
    </div>
      <div class="form-group">
      <label for="exampleInputPassword1">Enter Password</label>
      <input class="form-control" id="exampleInputPassword1" placeholder="New Password" name="pass" type="password">
    </div>
      <div class="form-group">
      <label for="exampleInputConfirmPassword1">Confirm Password</label>
      <input class="form-control" id="exampleInputConfirmPassword1" placeholder=" Retype Password" name="cpass" type="password">
    </div>
    </fieldset>
            <input type="submit" class="btn btn-primary" value="Sign Up" name="submit">
  </fieldset>
</form>
            </div>
        </div>
    </body>
</html>

