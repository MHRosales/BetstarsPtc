<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-GanadoresSerieA.aspx.cs" Inherits="BetstarsPtc._1_GanadoresSerieA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

               <link rel="shortcut icon" type="image/png" href="../imagenes/betstars.png"/>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="EstilosCss/Login.css" rel="stylesheet" />
    <link href="EstilosCss/Login2.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>

    <title>BetStars | Serie A's winners </title>
</head>
<body>

    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="InicioINGLES.aspx">Betstars</a>
           <a class="nav-link" href="1-MenuGanadores.aspx" font-family="Avenir Next LT Pro"> Back</a>
            
        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Winners </h1>
                         
                        <div>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text="Who will be the winner?"></asp:Label>
                            
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Inter de Milan</asp:ListItem>
                                <asp:ListItem>Juventus of Turin</asp:ListItem>
                                <asp:ListItem>AS Roma</asp:ListItem>
                                <asp:ListItem> SSC Napoles</asp:ListItem>
                                </asp:DropDownList>
                            
                            </h3>
                            <br />
                        </div>
                        
                        <div class="myform-top">
                           <br />
                            <div class="myform-top-left">
                                <h3>
                                    <asp:Label ID="Label2" runat="server" Text="Final Score"></asp:Label>
                                    <br />
                                    
                                    
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                    
                                    <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
                                   
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </h3>
                                <div>
                                  <br />
                                    
                                    <asp:Button ID="Button1" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" runat="server" Text="Save" OnClick="Button1_Click"  />
            
                                </div>
                                <p> &nbsp;</p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            </div>
                                <div class="form-group">
                                    
                                </div>
                                <div class="form-group">
                                     
                                </div>
                               
                                
                             
                                <div>
                                    
                                </div>

                                 
                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        
        <main>
              <h1>Verify your Data</h1>
        
            <div class="form-group">
            <asp:TextBox ID="TextBox4" ReadOnly runat="server" placeholder="Winner..." type="Ganador" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox1" ReadOnly runat="server" placeholder="Score..." type="Puntos1" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox2" ReadOnly runat="server" placeholder="Score..." type="Puntos2" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <br />
            <h1> Type in your data to finalize your bet</h1>
             <div class="form-group">
            <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Username..." type="Usuario" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <div class="form-group">
            <asp:TextBox ID="TxtContra" runat="server" placeholder="Password..." type="Pasword" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <br />
            <asp:Button ID="Button2" runat="server" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" Text="Save" OnClick="Button2_Click" />
        </main>
       
            

           <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video4.mp4" type="video/mp4" /></video>  
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
        
</body>
</html>
