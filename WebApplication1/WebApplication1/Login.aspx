<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library Management System</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<!--===============================================================================================-->
    
</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form id="form1" runat="server" class="login100-form validate-form" onsubmit="Login">
					<span class="login100-form-title p-b-49">
					Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
	    <!-- Label for Username-->	<asp:Label ID="lblusername" CssClass="label-input100" runat="server" Text="Username: "></asp:Label><br />
        <!-- Input for USername-->  <asp:TextBox ID="txtusername" class="input100" placeholder="Type your Username" runat="server" ></asp:TextBox>
						
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
	 <!-- Label for PAssword-->	<asp:Label ID="lblpassword" CssClass="label-input100" runat="server" Text="Password: "></asp:Label><br />
     <!--Input for Password--> <asp:TextBox ID="txtpassword" class="input100" runat="server"  placeholder="Type your Password" ></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<br />
					<asp:Label ID="Label1" CssClass="label-input100" runat="server" Text="Select Role "></asp:Label><br />
						<br />
                    <!-- Radio Button for Admin--><asp:RadioButton ID="rdoadmin" runat="server" Checked="True"
                        ForeColor="Green" GroupName="a" Text="Admin" OnCheckedChanged="rdolibrary_CheckedChanged" />
						&nbsp;
				 <!-- Radio Button for Student-->	<asp:RadioButton ID="rdosudent" runat="server" ForeColor="Green" GroupName="a"
                        Text="Student" OnCheckedChanged="rdosudent_CheckedChanged" />
				
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn">
							</div>
				
							<button  class="login100-form-btn" runat="server"  >
               <!--Button For Login--><asp:Button ID="btnlogin"  runat="server" text="Login" OnClick="Button1_Click" style="background-color:transparent; border:none; color:white;" />
							
							</button>

						</div>
					</div>
						
					<div class="txt1 text-center p-t-54 p-b-20">
					
						<span>
							Or Sign Up Using
						</span>
					</div>

					<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="login100-social-item bg2">
							<i class="fa fa-twitter"></i>
						</a>

						<a href="#" class="login100-social-item bg3">
							<i class="fa fa-google"></i>
						</a>
					</div>
					</form>
					</div>
            
			</div>
		</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

    
    </form>
</body>
</html>
