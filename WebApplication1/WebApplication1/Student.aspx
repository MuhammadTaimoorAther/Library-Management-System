<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="bootstrap.min.css" rel="stylesheet" />
   <style>
       body {
width: 100%;
margin: 5px;
}

.table-condensed tr th {
border: 0px solid #6e7bd9;
color: white;
background-color: #6e7bd9;
}

.table-condensed, .table-condensed tr td {
border: 0px solid #000;
}

tr:nth-child(even) {
background: #f8f7ff
}


   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
       <div class="container-fluid">
           <div class="row">
               <div class="col-md-12">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <h3 class="navbar-brand">Welcome</h3>
         <asp:Label class="navbar-brand" style="color:darkred;" ID="Label1" runat="server" Text=""></asp:Label>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="myfunction2()"href="#">View Books</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="myfunction1()" href="#">My Books Report</a>
      </li>
    </ul>
    <span class="navbar-text">
        <asp:Button ID="Logout" class="btn btn-danger" runat="server" Text="Logout" OnClick="Logout_Click" />
    </span>
  </div>
</nav>
       </div></div> </div>
         <div id="mydiv1" style="display:none";>
         <table>
             <tbody>
             
                     <h2>Books Issued</h2>
                
                 <tr>
                     <td>
                         <asp:GridView ID="Grd1"  CssClass="table table-condensed table-hover" Width="100%" runat="server"></asp:GridView>
                     </td>
                 </tr>
             </tbody>
         </table>
             </div>
         <div id="mydiv2" style="display:none";>
             <table>
                 <tbody>
                     <h2>Books in Library</h2>
                     <tr>
                         <td>
                             <asp:GridView ID="Grd2" CssClass="table table-condensed table-hover" Width="100%" runat="server"></asp:GridView>
                         </td>
                     </tr>
                 </tbody>
             </table>
         </div>
         <script>
             function myfunction1() {
                 var x = document.getElementById("mydiv1");

                 if (x.style.display === "none") {
                     x.style.display = "block";

                 } else {
                     x.style.display = "none";

                 }
             }
             function myfunction2() {
                 var x = document.getElementById("mydiv2");

                 if (x.style.display === "none") {
                     x.style.display = "block";

                 } else {
                     x.style.display = "none";

                 }
             }
         </script>
   </form>
</asp:Content>
