<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BetstarsPtc.Login" %>

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

    <title> BetStars | Inicio de Sesión de Usuarios </title>
</head>
<body>

    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="InicioESPAÑOL.aspx">Betstars</a>
<%--            <asp:Button ID="btnregistro" BackColor="Red" BorderColor="Red" type="submit" runat="server" Text="Registro" OnClick="Button1_Click" />--%>
            <a class="nav-link" href="Registro.aspx" font-family="Avenir Next LT Pro"> Registro</a>
             <a class="nav-link" href="ElegirLogin.aspx" font-family="Avenir Next LT Pro"> Salir</a>

        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Iniciar Sesión </h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
                              
                                <p>Digite su usuario y contraseña </p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <form role="form" action="" method="post" class="">
                                <div class="form-group">
                                    <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Usuario..." type="text" class="form-control" onpaste="return false" minlength="4" MaxLength="15" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtContra" runat="server" placeholder="Contraseña..." type="password" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
                                </div>

                                <asp:Button runat="server" CssClass="btn-xl"  Text="Entrar" BackColor="Red" BorderColor="Red" OnClick="Unnamed1_Click" OnClientClick="Unnamed2_Click" Height="60px"></asp:Button>

                                <div>
                                   <a class="nav-link" href="RecuperarCuenta.aspx" font-family="Avenir Next LT Pro"> ¿Has olvidado tu contraseña?</a>
                                   
                                </div>

                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
    <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video2.mp4" type="video/mp4" /></video>
</body>
</html>