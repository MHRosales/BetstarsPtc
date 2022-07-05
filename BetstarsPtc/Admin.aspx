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
    <title>Admin</title>
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
                            <asp:Button ID="Button1" runat="server" Text="Agregar Ganadores" Height= "200px" Width="200px" OnClick="Button1_Click"/>
                             <asp:Button ID="Button4" runat="server" Text="Ver Ganadores" Height= "200px" Width="200px" OnClick="Button4_Click"/>
                            <asp:Button ID="Button2" runat="server" Text="Ver Usuarios" Height= "200px" Width="200px" OnClick="Button2_Click"/>
                            <asp:Button ID="Button3" runat="server" Text="Ver Apuestas" Height= "200px" Width="200px" OnClick="Button3_Click"/>

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