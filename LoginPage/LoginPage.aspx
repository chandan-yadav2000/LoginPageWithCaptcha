<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LoginPage.LoginPage" %>


<%--Calling the Refernce of the Assembly that have been MSCaptcha--%> 
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        body {
            background-color: gray;
        }

        fieldset {
            border: thin solid white;
            margin: 0 auto;
            padding: 2em;
            width: 75%;
        }

        label {
            display: block;
            margin: 0.25em 0;
            font-weight: bold;
            font-family: 'Permanent Marker', cursive;
            color: rgba(238, 238, 238, 0.7);
        }

        input {
            border: 1px solid #ccc;
            box-shadow: inset 0 1px 3px #ddd;
            border-radius: 5px;
            vertical-align: middle;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            max-width: 100%;
            padding: 0.5em 0.6em;
            margin-left:20px;
        }

        form {
           
            border-right: 10px solid tan;
            position: relative;
            width: 640px;
            margin: 0 auto;
            border-top: #bda27e solid 12px;
            border-left: #b19876 solid 12px;
            border-bottom: #c9ad86 solid 12px;
            box-shadow: 0px 0px 6px 5px rgba(58, 18, 13, 0), 0px 0px 0px 2px #c2a782, 0px 0px 0px 4px #a58e6f, 3px 4px 8px 5px rgba(0, 0, 0, 0.5);
            background-image: radial-gradient( circle at left 30%, rgba(34, 34, 34, 0.3), rgba(34, 34, 34, 0.3) 80px, rgba(34, 34, 34, 0.5) 100px, rgba(51, 51, 51, 0.5) 160px, rgba(51, 51, 51, 0.5)), linear-gradient( 215deg, transparent, transparent 100px, #222 260px, #222 320px, transparent), radial-gradient( circle at right, #111, rgba(51, 51, 51, 1));
            background-color: #333;
            top: 85px;
            left: 1px;
        }

        .Button {
            display: inline-block;
            padding: 8px 12px;
            color: black;
            background-color: palegreen;
            border: 0;
            cursor: pointer;
            transition: all 300ms ease;
            border-radius: 4px;
            font-size: 18px;
            font-weight:bold;
            
        }  

        label {
            margin-left:15px;
            display: block;
            
            font-weight: bold;
            font-family: 'Permanent Marker', cursive;
            color: rgba(238, 238, 238, 0.7);
        }
        .Captcha {
            margin-left:20px;
            width:199px;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<fieldset>
            <legend>Login Please</legend>--%>
            <div>
                <label>Useranme:</label>
                <asp:TextBox ID="TextBox1" class="text" runat="server" placeholder="Username" ></asp:TextBox>
                <br />
                <label>Password:</label>
                <asp:TextBox ID="TextBox2" class="text" runat="server" placeholder="Password"></asp:TextBox>
            </div>
            <br/>
        <%--Captcha Image will display in this Controller--%>
            <cap:CaptchaControl ID="cptCaptcha" runat="server" CssClass="Captcha"
                CaptchaBackgroundNoise="Low" CaptchaLength="5"
                CaptchaHeight="60" CaptchaWidth="200" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
                CaptchaLineNoise="None" CaptchaMinTimeout="5"
                CaptchaMaxTimeout="240" FontColor="#529E00"  />
            <br/>
        <%--The textbox where Captcha should be return--%>
            <asp:TextBox ID="txtCaptcha" class="text" runat="server" placeholder="Enter Captcha"></asp:TextBox>
            <asp:Button ID="btnLogin" OnClick="Btn_Login" runat="server" Text="Submit" CssClass="Button" type="Submit" />    
        <br />
        <br />
        <asp:Label ID="lblErrorMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label>
        <%--</fieldset>--%>
    </form>
</body>
</html>
