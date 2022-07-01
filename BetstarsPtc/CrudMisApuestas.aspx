<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudMisApuestas.aspx.cs" Inherits="BetstarsPtc.CrudMisApuestas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="EstilosCss/Login.css" rel="stylesheet" />
    <link href="EstilosCss/Login3.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title></title>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Betstars</a>
</nav>
    <form id="form1" runat="server">
        <div>
            <main>
              <h1>Verifique sus Datos</h1>
        
            <div class="form-group">
            <asp:TextBox ID="TextBox4" ReadOnly runat="server" placeholder="Ganador..." type="Ganador" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox1" ReadOnly runat="server" placeholder="Puntos..." type="Puntos1" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox2" ReadOnly runat="server" placeholder="Puntos..." type="Puntos2" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <div class="form-group">
            <asp:TextBox ID="TextBox3"  ReadOnly runat="server" placeholder="Apuesta..." type="Apuesta" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <br />
            <h1> Ingrese sus datos para Finalizar la apuesta</h1>
             <div class="form-group">
            <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Usuario" type="Usuario" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <div class="form-group">
            <asp:TextBox ID="TxtContra" runat="server" placeholder="Pasword..." type="Pasword" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <br />
            
        </main>

        </div>
    </form>
</body>
</html>
