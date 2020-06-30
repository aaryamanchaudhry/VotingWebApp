<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Assignment.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    
    <div class="jumbotron">

        <table>
            <tr>
    <th>    Candidate  </th>
   
  
  <th> No of Votes  </th>
   
    
    </tr>

             <tr>
    <td> <asp:Label ID="Label4" runat="server" Text="Elon"></asp:Label> </td>
   
  <td><asp:Label ID="Label1" runat="server" Text="1"></asp:Label> </td>
    </tr>
            <tr>
    <td> <asp:Label ID="Label2" runat="server" Text="Mark"></asp:Label> </td>
   
  <td><asp:Label ID="Label3" runat="server" Text="2"></asp:Label> </td>
    </tr>
            <tr>
    <td> <asp:Label ID="Label5" runat="server" Text="Peter"></asp:Label> </td>
   
  <td><asp:Label ID="Label6" runat="server" Text="3"></asp:Label> </td>
    </tr>
   
            </table>

        </div>
</asp:Content>
