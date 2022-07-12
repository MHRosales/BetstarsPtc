<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarCuenta.aspx.cs" Inherits="BetstarsPtc.RecuperarCuenta" %>

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
    <title> BetStars | Recuperar Cuenta </title>
</head>
<body>
    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Betstars</a>

<%--            <asp:Button ID="btnregistro" BackColor="Red" BorderColor="Red" type="submit" runat="server" Text="Login" OnClick="btnregistro_Click" />--%>
                <a class="nav-link" href="Login.aspx" font-family="Avenir Next LT Pro"> Login</a>

        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Recuperar contraseña </h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
                                <h3>¿Has olvidado tu contraseña?</h3>
                                <p>Recuperarla sin problemas. </p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <form role="form" action="" method="post" class="">
                                <div class="form-group">
                                    <asp:TextBox ID="txtcuenta" runat="server" placeholder="Usuaraio..." type="text" class="form-control" />
                                </div>

                                <asp:Button runat="server" Text="Recuperar" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" OnClick="Unnamed1_Click"></asp:Button>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Literal ID="alertas" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video5.mp4" type="video/mp4" /></video>
    </form>
</body>
</html>
