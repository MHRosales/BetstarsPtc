<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-ElegirLogin.aspx.cs" Inherits="BetstarsPtc._1_ElegirLogin" %>

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
    <title> BetStars | Login method </title>
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
  <a class="navbar-brand" href="InicioINGLES.aspx">Betstars</a>
  <a class="nav-link" href="InicioINGLES.aspx" font-family="Avenir Next LT Pro"> Back</a>
    
  
  

</nav>
        <main>
    <h1>Choose how you want to Login </h1>
    
                    <div class="myform-top">
                        <div class="myform-top-left">
                                                  
                        </div>
                        <div>
              
                           
           </div>
                        <h5> User </h5>
                       <asp:ImageButton CssClass="btn-xl" ID="ImageButton1" ImageUrl="~/Imagenes/2.jpg" Width="170px" Height="170px" runat="server" OnClick="ImageButton1_Click"   />

                        <br />
                        <h5> Administrator </h5>
                        <asp:ImageButton CssClass="btn-xl" ID="ImageButton2" ImageUrl="~/Imagenes/3.jpg" Width="170px" Height="170px" runat="server" OnClick="ImageButton2_Click"  />
                        <br />
                        
                        
             

           </div>
            
        
            </main>
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video11.mp4" type="video/mp4" /></video>
        
 </form>
</body>
</html>
