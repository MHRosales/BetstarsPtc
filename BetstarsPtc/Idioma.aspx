<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Idioma.aspx.cs" Inherits="BetstarsPtc.Idioma" %>

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

    <title>Login</title>
</head>
<body>

    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Betstars</a>
        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Elija Su idioma </h1>
                        <h3>Choose your language </h3>

                        <div class="myform-top">
                            <div class="myform-top-left">
                              
                              
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                          
                                <asp:ImageButton CssClass="btn-xl" ID="ImageButton1" ImageUrl="~/Imagenes/Bandera2.jpg" Width="240px" Height="170px" runat="server" OnClick="ImageButton1_Click"  />
                                <asp:ImageButton CssClass="btn-xl" ID="ImageButton2" ImageUrl="~/Imagenes/Bandera3.jpg" Width="240px" Height="170px" runat="server"  />
                            </div>
                        </div>
                        
                                </div>


                               

                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
    <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video10.mp4" type="video/mp4" /></video>
</body>
</html>
