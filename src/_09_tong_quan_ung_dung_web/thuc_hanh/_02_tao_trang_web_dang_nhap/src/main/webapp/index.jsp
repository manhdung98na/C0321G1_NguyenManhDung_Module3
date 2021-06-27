<!DOCTYPE HTML>
<html>
<style type="text/css">
  .login {
    height:180px; width:300px;
    margin:0;
    text-align: center;
    padding:10px;
    border:1px #CCC solid;
  }
  .login-element{
    display: block;
  }
  .login input {
    padding:5px; margin:5px
  }
</style>
<body>
<form method="get" action="/login">
  <div class="login">
    <h2>Login</h2>
    <input class="login-element" type="text" name="username" size="30"  placeholder="username" />
    <input class="login-element" type="password" name="password" size="30" placeholder="password" />
    <input class="login-element" type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>