<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="BetstarsPtc.Menu" %>

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
    <title>Menu</title>
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
    <asp:Button ID="Button1" runat="server" Text="Mis Apuestas" BackColor="Red" BorderColor="Red"/>
  
  

    <asp:Button ID="Button10" runat="server" Text="Salir" BackColor="Red" BorderColor="Red" OnClick="Button10_Click" />
  
  

</nav>
        <main>
    <h1>  Elija su liga </h1>
                    <div class="myform-top">
                        <div class="myform-top-left">
                            <h3> Buena Suerte</h3>                            
                        </div>
                        <div>
              

           </div>
                        <asp:Button ID="Button2" runat="server" Text="Mundial" BackColor="Red" BorderColor="Red" Height="150px" Width="150px" OnClick="Button2_Click"/>
                        <asp:Button ID="Button3" runat="server" Text="NBA" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
                        <asp:Button ID="Button4" runat="server" Text="NFL" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
                        <asp:Button ID="Button5" runat="server" Text="UEFA" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
             <br />
             <br />
             <br />
             <br />
         <div>
                        <asp:Button ID="Button6" runat="server" Text="SERIE A" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
                        <asp:Button ID="Button7" runat="server" Text="LA LIGA" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
                        <asp:Button ID="Button8" runat="server" Text="MLB" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>
                        <asp:Button ID="Button9" runat="server" Text="PREMIER" BackColor="Red" BorderColor="Red" Height="150px" Width="150px"/>


           </div>
            </div>
           </div>
        <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video1.mp4" type="video/mp4" /></video>
            </main>
 </form>
</body>
</html>