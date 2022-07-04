<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuNfl.aspx.cs" Inherits="BetstarsPtc.MenuNfl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />    
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet"/>
        <link href="EstilosCss/Login.css" rel="stylesheet" />
        <link href="EstilosCss/Login2.css" rel="stylesheet" />
       
        <script src="SweetAlert/sweetalert2.all.min.js"></script>
        <script src="SweetAlert/sweetalert2.js"></script>
    <title>Mundial</title>
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
        <a class="nav-link" href="Menu.aspx" font-family="Avenir Next LT Pro"> Salir</a>

  
  

</nav>
        <main>
    <h1>  Elija su Partido </h1>
    
                    <div class="myform-top">
                        <div class="myform-top-left">
                            <h3> Buena Suerte</h3>                            
                        </div>
                        <div>
              

           </div>
                       
                        <br />
                        <br />
                        
                        <br />
                        <br />
                  
                        <br />
                        <br />
                        
             

           </div>
            
        
            </main>
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video9.mp4" type="video/mp4" /></video>
        
 </form>
</body>
</html>
