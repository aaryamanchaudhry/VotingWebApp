<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assignment.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster" />
    <style>
        .logo {
            text-align: center;
        }

        body {
            background-image: url("../Resources/Images/sheridan.jpg");
            background-size: cover;
            font-family: "Lobster", serif;
        }

        .gridArea {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-template-rows: auto;
            grid-template-areas: "login signup";
            grid-gap: 10px;
            color: white;
        }

        .common {
            padding: 10px;
            margin: 10px;
            opacity: 0.5;
            background-color: black;
        }

            .common h1 {
                background-color: deepskyblue;
                color: black;
                text-align: center;
                opacity: 1;
            }

        .login {
            grid-area: login;
        }

        .signup {
            grid-area: signup;
        }

        .button:hover {
            cursor: pointer;
            background-color: blueviolet;
            color: white;
        }

        .inline1, .inline2 {
            display: inline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <img src="../Resources/Images/ssu.gif" style="height: 100px; width: 100px;" />
        </div>


        <section class="gridArea">
          
             <asp:Panel ID="LoginButtonPanel" runat="server" Visible ="true">
                  <div class ="login common">
                <asp:Button ID="NewUser" runat="server" Text="New User" OnClick="Login_Choice_Click"/>
            </div>

            </asp:Panel>            
            
           
                <asp:Panel ID="LoginPanel" runat="server" Visible ="false">
                     <div class ="login common">
                     <h1>Sign In</h1> 
                <div class ="inline1">
            <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
                <asp:TextBox ID="usernameLogin" runat="server"></asp:TextBox> <br />  <br />
                <asp:Label ID="Label3" runat="server" Text="Password :" TextMode="Password" ></asp:Label>
                <asp:TextBox ID="passwordLogin" runat="server" TextMode="Password"></asp:TextBox> <br /> <br />
              <asp:Button ID="Button1" CssClass="button" runat="server" Text="Login" OnClick="Login_Click" />
                    <br /> <br />
                    <div class="visibleLogin" style="visibility: visible" >
                     <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
               </div>
                    </div>
 </div>
            </asp:Panel>

               

             <asp:Panel ID="SignupButtonPanel" runat="server" Visible ="true">
             <div class ="signup common">
                 <asp:Button ID="ExistingUser" runat="server" Text="Existing User" OnClick="Signup_Choice_Click" />
            </div>
            </asp:Panel>
            <asp:Panel ID="SignupPanel" runat="server" Visible="false">
                <div class="login common">
                      <h1> New here ? Sign up quickly below</h1> 
                 <div class ="inline2">
                <asp:Label ID="Label2" runat="server" Text="First Name :"></asp:Label>
                <asp:TextBox ID="tbVfname" runat="server"></asp:TextBox>  <br />  <br />

                 <asp:Label ID="Label4" runat="server" Text="Last Name :"></asp:Label>
                <asp:TextBox ID="tbLname" runat="server"></asp:TextBox>  <br />  <br />

                 <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
                <asp:TextBox ID="tbVaddress" runat="server"></asp:TextBox>  <br />  <br />

                 <asp:Label ID="Label6" runat="server" Text="Phone :"></asp:Label>
                <asp:TextBox ID="tbVphone" runat="server"></asp:TextBox>  <br />  <br />

                 <asp:Label ID="Label7" runat="server" Text="Username :"></asp:Label>
                <asp:TextBox ID="tbVusername" runat="server"></asp:TextBox>  <br />  <br />

                 <asp:Label ID="Label8" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="tbVpassword" runat="server" TextMode="Password"></asp:TextBox>  <br />  <br />

                <asp:Button ID="Button2" CssClass="button" runat="server" Text="Signup" />

                      <div class="visibleSignup" style="visibility: visible" >
 <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                </div>
            </div>
                </div>
            </asp:Panel>

        </section>
    </form>
</body>
</html>
