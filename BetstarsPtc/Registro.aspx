<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="BetstarsPtc.Registro" %>

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
    <title>Registro</title>
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
  <a class="navbar-brand" href="#">Betstars</a>
  
  <asp:Button ID="btnlogin" BackColor="Red" BorderColor="Red" type="submit" runat="server" Text="Login" OnClick="btnlogin_Click" />

</nav>
        <div class="my-content">
        <div class="container">
            

            <div class="row">
                <div class="col-sn-12"> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 myform-cont">
                     <h1>  Registro </h1>
                    <div class="myform-top">
                        <div class="myform-top-left">
                            <h3> Registrese</h3>                            
                        </div>

                    </div>
                    <div class="myform-bottom">
                        </div>
                            <div class="form-group"> 
                                <h4>Ingrese su nombre</h4>
                                <asp:TextBox ID="txtfirst" runat="server"  placeholder="Nombres..." type="text" class="form-control"  onpaste="return false"  minlength="5" maxlength="30"  onkeypress="return validar(event)" ></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese su Apellido</h4>
                                <asp:TextBox ID="txtapellido" runat="server"  placeholder="Apellidos..." type="text" class="form-control"  onpaste="return false"  minlength="5" maxlength="30" onkeypress="return validar(event)"></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese su nombre de usuario</h4>
                                <asp:TextBox ID="txtusuario" runat="server"  placeholder="Usuario..." type="text" class="form-control"  onpaste="return false" minlength="5" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese su Contraseña</h4>
                                <asp:TextBox ID="txtclave" runat="server"  placeholder="Contraseña..." type="password" class="form-control"  onpaste="return false" minlength="2" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Repita su Contraseña</h4>
                                <asp:TextBox ID="txtconfirm" runat="server"  placeholder="Repita Contraseña..." type="password" class="form-control"  onpaste="return false" minlength="2" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese su Correo electronico</h4>
                                <asp:TextBox ID="txtgmail" runat="server"  placeholder="Gmail..." type="email" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                             <div class="form-group"> 
                                 <h4>Ingrese su Numero de tarjeta</h4>
                                <asp:TextBox ID="txtTarjeta" runat="server"  placeholder="Tarjeta..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese el CVV de su tarjeta</h4>
                                <asp:TextBox ID="txtCvv" runat="server"  placeholder="CVV..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="3" maxlength="30"/>
                            </div>
                            <div class="form-group"> 
                                <h4>Ingrese la Fecha de caducidad de su tarjeta</h4>
                                <asp:TextBox ID="txtFecha" runat="server"  placeholder="Fecha de Caducidad..." type="Tarjeta" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                             <h4>Ingrese su Fecha de nacimiento</h4>
                            
                             <asp:TextBox ID="txtFechaNac" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                             <div class="form-group"> 
                                <h4>Ingrese un documento que pruebe su identidad
                                 </h4>
                                 <asp:FileUpload ID="PhotoFile" runat="server" CssClass="form-control" />
                            </div>
                           <asp:Button runat="server" Text="Registrarse" BackColor="Red" BorderColor="Red" OnClick="Unnamed1_Click"></asp:Button> 

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
