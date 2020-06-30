<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Assignment.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div class="visibleNotVoted" style="visibility: hidden" >
    <h1 style="visibility: hidden">Please come back here after voting.</h1>
        </div>

     <div class="visibleVoted" style="visibility: visible" >
    <h3>Vote Receipt</h3>
  <br /><br /> 
    <div class="jumbotron">
        <strong>Election Year:</strong>    <asp:Label ID="Label1" runat="server" Text="2019"></asp:Label> <br /><br />
        <strong>Voter ID:</strong>   <asp:Label ID="Label2" runat="server" Text="aaryaman"></asp:Label><br /><br />
        <strong>Candidate Selected:</strong>   <asp:Label ID="Label3" runat="server" Text="Elon"></asp:Label><br /><br />
       </div>
    </div>
</asp:Content>
