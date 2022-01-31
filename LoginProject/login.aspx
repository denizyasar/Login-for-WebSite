<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title></title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            background-color: #4CAF50;
        }

        form {
            border: 3px solid #f1f1f1;
            width: 40%;
            margin: auto;
            background-color: white;
            box-shadow: 10px 10px 5px #227429;
        }

        input[type=email], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            animation: ease-in;
        }

        .login {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: center;            
        }

        .reset {
            background-color: #e83636;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: center;
        }

        .register {
            background-color: #008aff;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 40%;
            text-align: center;
        }
       
        button:hover, .login:hover {
            opacity: 0.8;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 30%;
            border-radius: 30%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        .textAlign {
            text-align: center;
            display: inline-block;
        }


        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
        }

        .auto-style1 {
            padding: 16px;
            height: 55px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="imgcontainer">
            <h2>Login Form</h2>
            <img src="login-icon.png" alt="Avatar" class="avatar" />
        </div>

        <div class="container">
            <asp:Label ID="lblFail" runat="server" ForeColor="Red" CssClass="textAlign" Width="100%"></asp:Label><br />
            <label for="email"><b>E-mail</b></label>
            <input type="email" placeholder="Enter your E-mail" name="email" required="required" />

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required="required" />

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login"  OnClick="btnLogin_Click" /><br />
            <button type="reset" class="reset">Cancel</button>
        </div>
        <div class="auto-style1" style="background-color: #f1f1f1">
            <span class="psw" style="height: 41px">Forgot <a href="retrieve.aspx">password?</a></span>
            <a href="register.aspx">
                <button type="button" class="register" onclick="">Register</button></a>

        </div>
    </form>


</body>
</html>
