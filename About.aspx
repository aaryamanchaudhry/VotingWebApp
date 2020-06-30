<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Assignment.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="visibleNotVoted" style="visibility: visible" >
    <h3>Vote Page</h3>

    <div class="jumbotron">
     <asp:Label ID="Label1" runat="server" Text="Elon"></asp:Label>
    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="VoteCandidates" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Peter"></asp:Label>
    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="VoteCandidates" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Mark"></asp:Label>
    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="VoteCandidates" />

    <br />

        </div>

    <asp:Button ID="Button1" runat="server" Text="Vote" class="btn btn-primary btn-lg" OnClick="Vote_Button" />
        </div >

    <div class="visibleVoted" style="visibility: hidden" > 
        <h1> You have already voted!, Thanks</h1>
    </div>
   
</asp:Content>
