<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Amaretti</title>
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css"/><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css"/>
  </head>
  <body class="am-splash-screen">
    <div class="am-wrapper am-login">
      <div class="am-content">
        <div class="main-content" style="background-color: rgba(255, 255, 255, 0);">
          <div class="login-container">
            <div class="panel panel-default">
              <div class="panel-heading"><img src="../assets/img/logo-full-retina.png" alt="logo" width="150px" height="39px" class="logo-img"><span>Please enter your user information.</span></div>
              <div class="panel-body">
                <s:form action="login.action" method="post" class="form-horizontal">
                  <div class="login-form">
                    <div class="form-group">
                      <div id="email-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-mail"></i></span>
                        <input type="email" value="master@master.com" name="customer.cust_email" data-parsley-trigger="change" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#email-handler" required="" placeholder="E-mail" autocomplete="off" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group"><span class="input-group-addon"><i class="icon s7-lock"></i></span>
                        <input id="password" value="master" name="customer.cust_password" type="password" placeholder="Password" class="form-control">
                      </div>
                    </div>
                    <div class="form-group login-submit">
                      <button data-dismiss="modal" type="submit" class="btn btn-primary btn-lg">Log In</button> &nbsp;
                      <button data-dismiss="modal" type="button" class="btn btn-info btn-lg" onclick="location.href='joinForm.action';">Sign Up</button> <!-- 회원가입버튼 -->
                    </div>
                    <div class="form-group footer row">
                      <div class="col-xs-6"><a href="#">Forgot Password?</a></div>
                     <!--  <div class="col-xs-6 remember">
                        <label for="remember">Remember Me</label>
                        <div class="am-checkbox">
                          <input type="checkbox" id="remember">
                          <label for="remember"></label>
                        </div>
                      </div> -->
                    </div>
                  </div>
                 </s:form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="../assets/js/main.js" type="text/javascript"></script>
    <script src="../assets/js/sojaeji.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//initialize the javascript
      	App.init();
      });
      
    </script>
  </body>
</html>