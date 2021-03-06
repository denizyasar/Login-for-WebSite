<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activate.aspx.cs" Inherits="LoginProject.activate" %>

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

        form {
            border: 3px solid #f1f1f1;
            width: 30%;
            margin: auto;
            background-color: white;
            box-shadow: 10px 10px 5px #227429;
        }

        .activate {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: center;
        }

        button:hover {
            opacity: 0.8;
        }

        .container {
            padding: 16px;
        }

        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            animation: ease-in;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        .textAlign {
            text-align: center;
            display: inline-block;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="imgcontainer">
            <h2>Activation Form</h2>
        </div>
        <div class="container">
            <asp:Label ID="lblFail" runat="server" ForeColor="Red" CssClass="textAlign" Width="91%"></asp:Label>
            <label for="code"><b>Code</b></label>
            <input type="text" placeholder="Enter Activation Code" name="code" required="required" />
            <asp:Button ID="btnActivate" runat="server" Text="Activate" CssClass="activate" OnClick="btnActivate_Click" />
        </div>
    </form>
</body>
</html>
