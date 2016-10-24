<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Amaretti</title>
    <link rel="stylesheet" type="text/css" href="assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery.nanoscroller/css/nanoscroller.css"/><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="assets/lib/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="assets/css/style.css" type="text/css"/>
    <script type="text/javascript">
    function formCheck() {

    	var email = document.getElementById('email').value;
		var pass1 = document.getElementById('pass1').value;
		var pass2 = document.getElementById('pass2').value;
		var nickname = document.getElementById('nickname').value;
		var birthday = document.getElementById('birthday').value;
		
		if(email == ''){
			alert('이메일을 입력하세요!');
			return false;
		}
		if(pass1 == ''){
			alert('비밀번호를 입력하세요!');
			return false;
		}
		if(pass2 == ''){
			alert('비밀번호를 다시 한번 입력하세요!');
			return false;
		}
		if(nickname == ''){
			alert('닉네임을 입력하세요!');
			return false;
		}
		if(birthday == ''){
			alert('생일을 입력하세요!');
			return false;
		}
		return true;
	}
    </script>
  </head>
  <body class="am-splash-screen">
    <div class="am-wrapper am-login am-signup">
      <div class="am-content">
        <div class="main-content">
          <div class="login-container sign-up">
            <div class="panel panel-default">
              <div class="panel-heading"><img src="assets/img/logo-full-retina.png" alt="logo" width="150px" height="39px" class="logo-img"><span>Please enter your user information.</span></div>
              
              <!-- 회원가입판넬시작 -->
              
              <div class="panel-body">
                <s:form action="join" method="post" onsubmit="return formCheck()">
                  
                    <div class="form-group">
                      <div id="email-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-mail"></i></span>
                        <input type="email" name="customer.cust_email" id="email" data-parsley-trigger="change" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#email-handler" required="" placeholder="E-mail" autocomplete="off" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <div class="col-xs-6">
                        <div id="password-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-lock"></i></span>
                          <input id="pass1" name="customer.cust_password" type="password" data-parsley-errors-messages-disabled="true" placeholder="Password" data-parsley-class-handler="#password-handler" required="" class="form-control">
                        </div>
                      </div>
                      
                      <div class="col-xs-6">
                        <div id="confirm-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-lock"></i></span>
                          <input parsley-equalto="#pass1" id="pass2" type="password" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#confirm-handler" required="" placeholder="Confirm" class="form-control">
                        </div>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div id="nick-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-user"></i></span>
                        <input type="text" name="customer.cust_nickname" id="nickname" data-parsley-trigger="change" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#nick-handler" required="" placeholder="Nickname" autocomplete="off" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div id="nick-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-home"></i></span>
                        <!-- <input type="text" name="address" data-parsley-trigger="change" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#nick-handler" required="" placeholder="Address" autocomplete="off" class="form-control"> -->
                        <div class= "col-sm-12" style="margin-left: -30px">
	                        <div class="col-sm-3">
		                        <select class="form-control" name="sido" id="sido"></select>
	                        </div>
	                        <div class="col-sm-5" style="margin-left: -10px">
		                        <select class="form-control" name="gugun" id="gugun"></select>
	                        </div>
	                        <div class="col-sm-5" style="margin-left: -20px">
		                        <select class="form-control" name="dong" id="dong"></select>
	                        </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="form-group">
	                    <div id="nick-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-date"></i></span>
		                   <div class="form-group">
	                         <div class="col-sm-12" >
	                          <div data-min-view="2" data-start-view="4" data-date-format="yyyy-mm-dd" class="date datetimepicker col-md-5 col-xs-7" >
	                            <input style="margin-left: -13px" size="20" type="text" value="" id="birthday" name="customer.cust_birthday" readonly="readonly" class="form-control" placeholder="Birthday"><span style="float: left; margin-top: -35px; visibility: hidden;" class="input-group-addon btn btn-primary"><i class="icon-th s7-date" style=""></i></span>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
                    </div>
                    
                    <div class="form-group">
                      <div id="nick-handler" class="input-group"><span class="input-group-addon"><i class="icon s7-add-user" style="margin-left: 5px;"></i></span>
                        <!-- <input type="text" name="gender" data-parsley-trigger="change" data-parsley-errors-messages-disabled="true" data-parsley-class-handler="#nick-handler" required="" autocomplete="off" class="form-control"> -->
                      	<div class="form-group">
                      		<div class="col-sm-12" >
                        		<div class="am-radio inline">
                          			<input type="radio" checked="checked" name="customer.cust_gender" id="male" value="M" class="form-control"> 
                          			<label for="male" style="color: #a3a2a2">Male</label>
                        		</div>
                        		<div class="am-radio inline">
                          			<input type="radio" name="customer.cust_gender" id="female" value="F" class="form-control">
                        	  		<label for="female"  style="color: #a3a2a2">Female</label>
                        		</div>
                      		</div>
                    	</div>
                      </div>
                    </div>
                  </div>
                <!-- 회원가입판넬끝 -->  
                
                
                  <!-- <p class="conditions">By creating an account, you agree with the <a href="#">Terms and Conditions</a>.</p> -->
                  <button type="submit" class="btn btn-block btn-primary btn-lg">Sign Up</button>
             </s:form>
              </div>
            </div>
            <div class="text-center out-links"><a href="#">© 2016 &nbsp TEAM JanZani PROJECT.</a></div>
          </div>
        </div>
      </div>
    <script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="assets/js/main.js" type="text/javascript"></script>
    <script src="assets/js/sojaeji.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/lib/parsley/parsley.min.js" type="text/javascript"></script>
    <script src="assets/lib/datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="assets/lib/jquery.nestable/jquery.nestable.js" type="text/javascript"></script>
    <script src="assets/lib/moment.js/min/moment.min.js" type="text/javascript"></script>
    <script src="assets/lib/select2/js/select2.min.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap-slider/js/bootstrap-slider.js" type="text/javascript"></script>
    <script src="assets/js/app-form-elements.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//initialize the javascript
      	App.init();
      	App.formElements();
      	$('form').parsley();
      });
      sojaeji('서울', '강남구', '개포1동'); 
    </script>
  </body>
</html>