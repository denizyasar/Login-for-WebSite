<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="LoginProject.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            background-color: #4CAF50;
        }
        
        input[type=email], input[type=password], input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            animation: ease-in;
        }

        .signupbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            float: left;
            width: 50%;
        }

        .cancelbtn {
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            background-color: #f44336;
            float: left;
            width: 50%;
        }

            .signupbtn:hover, .cancelbtn:hover {
                opacity: 0.8;
            }

        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        .form {
            border: 3px solid #f1f1f1;
            width: 40%;
            margin: auto;
            background-color: white;
            box-shadow: 10px 10px 5px #227429;
        }

        .container {
            padding: 16px;
        }


        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 10px;
        }
      
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <form class="form" runat="server">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr />
            <asp:Label ID="lblFail" runat="server" ForeColor="Red" CssClass="textAlign" Width="100%"></asp:Label><br />
            <label for="name"><b>Name</b></label>
            <input type="text" placeholder="Enter your name" name="name" required="required" />

            <label for="surname"><b>Surname</b></label>
            <input type="text" placeholder="Enter your surname" name="surname" required="required" />

            <label for="email"><b>Email</b></label>
            <input type="email" placeholder="Enter your E-mail" name="email" required="required" />

            <label for="psw"><b>Password</b></label>
            <input type="password" id="psw" placeholder="Enter Password" name="psw" required="required" />

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" id="psw-repeat" placeholder="Repeat Password" name="psw-repeat" required="required" />

            <div>
                <button type="reset" class="cancelbtn">Cancel</button>
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="signupbtn" OnClick="btnSignup_Click" />

            </div>
        </div>
    </form>

</body>
</html>
