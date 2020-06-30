<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../Resources/Images/ElonMusk.png" alt="Elon" style="width:100%;">
      </div>

      <div class="item">
        <img src="../Resources/Images/MarkZuckerburg.png" alt="Mark" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="../Resources/Images/PeterParker.png" alt="Peter" style="width:100%;">
      </div>
    </div>

       <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

    <div class="jumbotron">
        <h1>Why Vote ?</h1>
        <p class="lead">College elections are talk of the town these days. Its necessary for all students to vote and contribute their part in making
            Sheridan a better community, through the views of thier favourite representator. So what are you waiting for ? Click that button below to vote now 
            for 2019 Elective.
        </p>
       
    </div>

     <div class="visibleNotVoted" style="visibility: visible" >
     <p><a href="~/About" class="btn btn-primary btn-lg">Vote Now &raquo;</a></p>
         </div>

    <div class="row">
        <div class="col-md-10">
            <h2>Who are we</h2>
            <p>
               Our team consists of 4 people i.e. Aaryaman Chaudhry, Atif , Hasan and Samin Ghousy. We are 2nd year Computer Systems Analyst students 
                having project experiences in several languages such as Angular, Java, C#, Javascript etc. This project is based on using ASP .NET 
                technology. This application aims to provide students of Sheridan, a platform where they can learn about candidates and then vote for their 
                favourite candidates. 
            </p>
            
        </div>
        
    </div>

</asp:Content>
