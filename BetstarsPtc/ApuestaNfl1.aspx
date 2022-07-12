<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApuestaNfl1.aspx.cs" Inherits="BetstarsPtc.ApuestaNfl1" %>

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

    <title> BetStars | NFL </title>
</head>
<body>

    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="InicioESPAÑOL.aspx">Betstars</a>
<%--            <asp:Button ID="Regresar" BackColor="Red" BorderColor="Red" runat="server" Text="Regresar" OnClick="Regresar_Click" />--%>
                <a class="nav-link" href="MenuNfl.aspx" font-family="Avenir Next LT Pro"> Regresar</a>

        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Apuesta </h1>
                         
                        <div>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text="¿Quién será el Ganador?"></asp:Label>
                            
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Los Angeles Rams</asp:ListItem>
                                <asp:ListItem>Cincinnati Bengals</asp:ListItem>
                                </asp:DropDownList>
                            
                            </h3>
                            <br />
                        </div>
                        
                        <div class="myform-top">
                           <br />
                            <div class="myform-top-left">
                                <h3>
                                    <asp:Label ID="Label2" runat="server" Text="Marcador Final"></asp:Label>
                                    <br />
                                    
                                    
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                    
                                    <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
                                   
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </h3>
                                <div>
                                  <br />
                                    <h3>
                                        <asp:Label ID="Label3" runat="server" Text="Su Apuesta"></asp:Label>
                                         <br />
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem>$1</asp:ListItem>
                                        <asp:ListItem>$2</asp:ListItem>
                                        <asp:ListItem>$3</asp:ListItem>
                                        <asp:ListItem>$4</asp:ListItem>
                                        <asp:ListItem>$5</asp:ListItem>
                                        <asp:ListItem>$6</asp:ListItem>
                                        <asp:ListItem>$7</asp:ListItem>
                                        <asp:ListItem>$8</asp:ListItem>
                                        <asp:ListItem>$9</asp:ListItem>
                                        <asp:ListItem>$10</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                  
                                    </h3>
                                    <asp:Button ID="Button1" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" runat="server" Text="Guardar" OnClick="Button1_Click" />
            
                                </div>
                                <p> &nbsp;</p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            </div>
                                <div class="form-group">
                                    
                                </div>
                                <div class="form-group">
                                     
                                </div>
                               
                                
                             
                                <div>
                                    
                                </div>

                                 
                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        
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
            <asp:TextBox ID="TxtContra" runat="server" placeholder="Password..." type="Pasword" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <br />
            <asp:Button ID="Button2" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" runat="server"  Text="Guardar" OnClick="Button2_Click" />
        </main>
       
            

           <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video9.mp4" type="video/mp4" /></video>  
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
        
</body>
</html>
