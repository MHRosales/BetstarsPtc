 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BetstarsPtc.Admin" %>

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
    <title>BetStars | Control de Administrador </title>
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
    <%--<asp:Button ID="Button1" runat="server" Text="Mis Apuestas" BackColor="Red" BorderColor="Red"/>--%>
   
<%--    <asp:Label CssClass="nav-link nav-item" ID="Label1" runat="server" href="#" Text="Mis Apuestas"></asp:Label >--%>
<%--    <asp:Button ID="Button10" runat="server" Text="Salir" CssClass="nav-item" OnClick="Button10_Click" />--%>
    <a class="nav-link" href="Idioma.aspx" font-family="Avenir Next LT Pro"> Salir</a>
     
  

</nav>
        <main>
    <h1>  Elija su Operacion</h1>
                    <div class="myform-top">
                        <div class="myform-top-left">
                            <h3> </h3>                            
                        </div>
                        <div>
                            <h5>Agregar Ganadores</h5>
                              <asp:ImageButton CssClass="btn-xl" ID="ImageButton1" ImageUrl="~/Imagenes/1.jpg" Width="240px" Height="240px" runat="server" OnClick="ImageButton1_Click"   />
                             <h5>Ver Ganadores</h5>
                              <asp:ImageButton CssClass="btn-xl" ID="ImageButton2" ImageUrl="~/Imagenes/1.jpg" Width="240px" Height="240px" runat="server" OnClick="ImageButton2_Click"   />
                            <h5>Ver Usuarios</h5>
                            <asp:ImageButton CssClass="btn-xl" ID="ImageButton3" ImageUrl="~/Imagenes/2.jpg" Width="240px" Height="240px" runat="server" OnClick="ImageButton3_Click"  />
                            <h5>Ver Apuestas</h5>
                            <asp:ImageButton CssClass="btn-xl" ID="ImageButton4" ImageUrl="~/Imagenes/Ganadores.jpg" Width="240px" Height="240px" runat="server" OnClick="ImageButton4_Click" />

           </div>
                        
                      
             <br />
             <br />
             <br />
             <br />
         <div>

             


           </div>
            </div>
           
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video7.mp4" type="video/mp4" /></video>
            </main>
 </form>
</body>
</html>