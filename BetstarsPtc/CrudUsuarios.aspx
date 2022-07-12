<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudUsuarios.aspx.cs" Inherits="BetstarsPtc.CrudUsuarios" %>

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
        <link href="EstilosCss/Login3.css" rel="stylesheet" />
       
        <script src="SweetAlert/sweetalert2.all.min.js"></script>
        <script src="SweetAlert/sweetalert2.js"></script>
    <title>La  Liga</title>
        <style type="text/css">
            .col-sn-12 {
                margin-left: 0px;
            }
        </style>
</head>
<body>
    <form runat="server" >
            <script type="text/javascript">
                function validar(e) { // 1
                    tecla = (document.all) ? e.keyCode : e.which; // 2
                    if (tecla == 8) return true; // 3
                    patron = /[A-Za-z\s]/; // 4
                    te = String.fromCharCode(tecla); // 5
                    return patron.test(te); // 6
                }
            </script>
            <script type="text/javascript">
                function numeros(nu) { // 1
                    tecla = (document.all) ? e.keyCode : e.which; // 2
                    if (tecla == 8) return true; // 3
                    ppatron = /\d/; // Solo acepta números// 4
                    te = String.fromCharCode(tecla); // 5
                    return patron.test(te); // 6
                }
            </script>    
    
              <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
             <!-- Brand -->
             <a class="navbar-brand" href="#">Betstars</a>
        <%--    <asp:Button ID="Button7" runat="server" Text="Regresar" BackColor="Red" BorderColor="Red" OnClick="Button7_Click" />--%>
                 <a class="nav-link" href="Menu.aspx" font-family="Avenir Next LT Pro"> Regresar</a>

  
  

                      </nav>
                     <main>
                       <h1>  Elija el usuario </h1>
    
                       <div class="myform-top">
                       <div class="myform-top-left">                            
                       </div>
                       <div>
              
                              </div>
                        <div class="form-group"> 
                                <h4>Ingrese el Id de su usuario</h4>
                                <asp:TextBox ID="TextBox1" runat="server"  placeholder="Usuario..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="10"/>
                            <br />
                             <asp:Button runat="server" Text="Buscar" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" OnClick="Unnamed1_Click"  ></asp:Button> 
                            </div>
                            <h4> Nombres</h4>
                            <asp:TextBox ID="TextBox2" runat="server"  placeholder="Nombres..." type="Id..." class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                            <h4> Apellidos</h4>
                            <asp:TextBox ID="TextBox3" runat="server"  placeholder="Apellidos..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                            <h4> Usuario</h4>
                            <asp:TextBox ID="TextBox4" runat="server"  placeholder=" Usuario..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4> Password</h4>
                            <asp:TextBox ID="TextBox5" runat="server"  placeholder="Password..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4> Correo</h4>
                            <asp:TextBox ID="TextBox6" runat="server"  placeholder="Correo..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4>Tarjeta</h4>
                           <asp:TextBox ID="TextBox7" runat="server"  placeholder="Tarjeta..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4>CVV</h4>
                           <asp:TextBox ID="TextBox8" runat="server"  placeholder="Cvv..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4>Fecha Caducidad Tarjeta</h4>
                           <asp:TextBox ID="TextBox9" runat="server"  placeholder="Fecha Caducidad Tarjeta..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <h4>Fecha de Nacimiento</h4>
                           <asp:TextBox ID="TextBox10" runat="server"  placeholder="Fecha de nacimiento..." type="Id" class="form-control"  onpaste="return false" minlength="1" maxlength="25"/>
                           <br />
                            </div>
                        <br />
                        <br />
                       <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

                        <br />
                        <br />
                        
             

           </div>
            
        
            </main>
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video4.mp4" type="video/mp4" /></video>
        
 </form>
</body>
</html>
