<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.WebForm4" %>
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
        <h3 class="navbar-brand">Welcome</h3><br />
         <asp:Label class="navbar-brand" style="color:darkred;" ID="Label1" runat="server" Text=""></asp:Label>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link"  href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="myFunction()" href="#" id="change-table-link">Add Book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  onclick="myFunction()"href="#">Delete Book</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" onclick="myFunction1()" href="#" >Add User</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" onclick="myFunction1()" href="#">Delete User</a>
      </li>
         <li class="nav-item">
        <a class="nav-link"  onclick="myFunction2()" href="#">Issue Book</a>
      </li>
    </ul>
    <span class="navbar-text">
        <asp:Button ID="Button7" class="btn btn-danger" runat="server" Text="Logout" OnClick="Button7_Click" />
    </span>
  </div>
</nav>
       </div></div> </div>
   
     <div id="mydiv1"> 
         <table style="width:50%;" >
           <thead>
           </thead>
           <tbody>
               <h2>Add or Delete User Here:</h2>
              
             <tr><td><asp:Label ID="lblname" class="label label-primary" runat="server" Text="Name"></asp:Label></td>
                <td>  <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br /></td>
                 <td><h2>Current Users</h2></td>
            </tr>
                <tr><td><asp:Label ID="lblpass" class="label label-primary" runat="server" Text="Password"></asp:Label></td>
                <td>  <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br /><br /> <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Add" OnClick="ADD" /> <asp:Button ID="Button2" class="btn btn-info" runat="server" Text="Delete" OnClick="Delete" /> </td>
                    
                    <td>
                        <asp:GridView ID="grd1" runat="server" CssClass="table table-condensed table-hover" Width="100%" OnSelectedIndexChanged="grd1_SelectedIndexChanged"></asp:GridView>
                    </td>
            </tr>
               <tr>
                   <td>

                   </td>
               </tr>
                
           </tbody>
       </table>
         </div>
       <div id="myDIV" style="display:none;" >
             <table style="width:50%;" >
           <tbody>
               <h2>Add or Delete Book Here</h2>
                    <tr>
                   <td>
                       <asp:Label ID="lblbookname" runat="server" Text="Book Name:"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtbookname" runat="server"></asp:TextBox>
                        
                   </td>
                   <td>
                       <h2>Current Books Record</h2>
                   </td>
               </tr >
                    <tr>
                        <td>
                            <asp:Label ID="lblbookID" runat="server" Text="Book ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbookID" runat="server"></asp:TextBox><br />
                            <asp:Button class="btn btn-info" ID="Button3" runat="server" Text="Add"  OnCick="AddBook" /> <asp:Button class="btn btn-info" ID="Button4" runat="server" Text="Delete" OnClick="DeleteBook" />
                        </td>
                        <td>
                            <asp:GridView ID="grd2" runat="server" CssClass="table table-condensed table-hover" Width="100%" >

                            </asp:GridView>
                        </td>
                    </tr>
           </tbody>
       </table>
       </div>
    <div id="myDIV2" style="display:none;">
       <table style="width:50%;">
           <tbody>
               
                       <h2>Issue Book to Students</h2>
                 
               <tr>
                   <td>
                        <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
                   </td>
                   <td>
                         <asp:TextBox ID="txtIssuename" runat="server"></asp:TextBox><br />
                   </td>
                  
                   </tr>
               <tr>
                   <td><asp:Label ID="Lab" runat="server" Text="Book ID:"></asp:Label></td> 
                   <td>
                            <asp:TextBox ID="txtissueid" runat="server"></asp:TextBox><br />
                          
                        </td>
                   
                    <td>
                       <h2>Current Books Record</h2>
                   </td>
               </tr>
               <tr>
                   <td><asp:Label ID="Label6" runat="server" Text="IssuedID:"></asp:Label></td>  
                   <td><asp:TextBox ID="txtissuedID" runat="server"></asp:TextBox><br />
                       <asp:Button class="btn btn-info" ID="Button5" runat="server" Text="IssueBook" OnClick="BookIssued" />
                       <br />
                       
                       <asp:Button class="btn btn-info" ID="Button6" runat="server" Text="BookReturned" OnClick="BookReturned" />
                   </td>
                     
                   <td>
                        <asp:GridView ID="grd3" runat="server" CssClass="table table-condensed table-hover" Width="100%"></asp:GridView>
                   </td>
               </tr>
           </tbody>
       </table></div>
        <script>
            
            function myFunction() {
                var x = document.getElementById("myDIV");
                
                if (x.style.display === "none") {
                    x.style.display = "block";

                } else {
                    x.style.display = "none";
                    
                }
            }

            function myFunction2() {
                var x = document.getElementById("myDIV2");
       
                if (x.style.display === "none") {
                    x.style.display = "block";
                   
                } else {
                    x.style.display = "none";
                  
                }
            }
         

            function applyStylesOnce() {
                // Check if styles have been applied before
                if (localStorage.getItem('stylesApplied')) {
                    return;
                }
                localStorage.setItem('stylesApplied', true);

                // Apply your styles here
                let myDiv = document.getElementById("myDIV");
                myDiv.style.display = 'none';
                
            }

            // Call the function when the page loads
            window.onload = applyStylesOnce;
          
        </script>
   </form>
    
   
      
</asp:Content>
