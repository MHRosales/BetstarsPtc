<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-Registro.aspx.cs" Inherits="BetstarsPtc._1_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
               <link rel="shortcut icon" type="image/png" href="../imagenes/betstars.png"/>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />    
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet"/>
        <link href="EstilosCss/Login.css" rel="stylesheet" />
        <link href="EstilosCss/Login2.css" rel="stylesheet" /> 
        <script src="SweetAlert/sweetalert2.all.min.js"></script>
        <script src="SweetAlert/sweetalert2.js"></script>
    <title> BetStars | Sign Up </title>
</head>
<body>
    <form runat="server" >
            <script type="text/javascript">
                function validar(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla==8) return true; // 3
                patron =/[A-Za-z\s]/; // 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
                }
            </script>
            <script type="text/javascript">
                function numeros(nu) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla==8) return true; // 3
                ppatron = /\d/; // Solo acepta números// 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
                }
            </script>    
    
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Brand -->
  <a class="navbar-brand" href="InicioINGLES.aspx-
      +">Betstars</a>
  
<%--  <asp:Button ID="btnlogin" BackColor="Red" BorderColor="Red" type="submit" runat="server" Text="Login" OnClick="btnlogin_Click" />--%>
        <a class="nav-link" href="1-Login.aspx" font-family="Avenir Next LT Pro"> Login</a>

</nav>
        <div class="my-content">
        <div class="container">
            

            <div class="row">
                <div class="col-sn-12"> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 myform-cont">
                     <h1>  Sign in </h1>
                    <div class="myform-top">
                        <div class="myform-top-left">
                            <h3> Registrese en BetStars </h3>                            
                        </div>

                    </div>
                    <div class="myform-bottom">
                        </div>
                            <div class="form-group"> 
                                <h4> Type in your name </h4>
                                <asp:TextBox ID="txtfirst" runat="server"  placeholder="Name..." type="text" class="form-control"  onpaste="return false"  minlength="5" maxlength="30"  onkeypress="return validar(event)" ></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <h4>Type in your last name</h4>
                                <asp:TextBox ID="txtapellido" runat="server"  placeholder="Last name..." type="text" class="form-control"  onpaste="return false"  minlength="5" maxlength="30" onkeypress="return validar(event)"></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <h4>Type in your username</h4>
                                <asp:TextBox ID="txtusuario" runat="server"  placeholder="User..." type="text" class="form-control"  onpaste="return false" minlength="5" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Type in your password</h4>
                                <asp:TextBox ID="txtclave" runat="server"  placeholder="Password..." type="password" class="form-control"  onpaste="return false" minlength="2" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Confirm your password</h4>
                                <asp:TextBox ID="txtconfirm" runat="server"  placeholder="Repeat your password..." type="password" class="form-control"  onpaste="return false" minlength="2" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Type in your email address</h4>
                                <asp:TextBox ID="txtgmail" runat="server"  placeholder="Gmail..." type="email" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                             <div class="form-group"> 
                                 <h4>Type in your credit card number</h4>
                                <asp:TextBox ID="txtTarjeta" runat="server"  placeholder="Card..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Type in the CVV code from your credit card</h4>
                                <asp:TextBox ID="txtCvv" runat="server"  placeholder="CVV..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="3" maxlength="30"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Type in the expiration date of your credit card</h4>
                                <asp:TextBox ID="txtFecha" runat="server"  placeholder="Expiration date..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                             <h4>Type in your date of birth</h4>
                            
                             <asp:TextBox ID="txtFechaNac" TextMode="Date" CssClass="form-control"  runat="server"></asp:TextBox>
                             <div class="form-group"> 
                                <h4>Type in a document that proves your identity
                                 </h4>
                                 <asp:FileUpload ID="PhotoFile" placeholder="document..." runat="server" CssClass="form-control" />
                            </div>
                           <asp:Button runat="server" Text="Sign in" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" OnClick="Unnamed1_Click" ></asp:Button> 

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
    <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video3.mp4" type="video/mp4" /></video>
</body>
</html>