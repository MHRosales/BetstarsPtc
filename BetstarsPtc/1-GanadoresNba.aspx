<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-GanadoresNba.aspx.cs" Inherits="BetstarsPtc._1_GanadoresNba" %>

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

    <title>Ganadores NBA</title>
</head>
<body>

    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Betstars</a>
          <a class="nav-link" href="1-MenuGanadores.aspx" font-family="Avenir Next LT Pro"> Back</a>
            
        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Winners </h1>
                         
                        <div>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text="Who will be the winner?"></asp:Label>
                            
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Warriors</asp:ListItem>
                                <asp:ListItem>Celtics</asp:ListItem>
                                <asp:ListItem>Mavericks</asp:ListItem>
                                <asp:ListItem>Heats</asp:ListItem>
                                </asp:DropDownList>
                            
                            </h3>
                            <br />
                        </div>
                        
                        <div class="myform-top">
                           <br />
                            <div class="myform-top-left">
                                <h3>
                                    <asp:Label ID="Label2" runat="server" Text="Final Score"></asp:Label>
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
                                        <asp:ListItem>60</asp:ListItem>
                                        <asp:ListItem>61</asp:ListItem>
                                        <asp:ListItem>62</asp:ListItem>
                                        <asp:ListItem>63</asp:ListItem>
                                        <asp:ListItem>64</asp:ListItem>
                                        <asp:ListItem>65</asp:ListItem>
                                        <asp:ListItem>66</asp:ListItem>
                                        <asp:ListItem>67</asp:ListItem>
                                        <asp:ListItem>68</asp:ListItem>
                                        <asp:ListItem>69</asp:ListItem>
                                        <asp:ListItem>70</asp:ListItem>
                                        <asp:ListItem>71</asp:ListItem>
                                        <asp:ListItem>72</asp:ListItem>
                                        <asp:ListItem>73</asp:ListItem>
                                        <asp:ListItem>74</asp:ListItem>
                                        <asp:ListItem>75</asp:ListItem>
                                        <asp:ListItem>76</asp:ListItem>
                                        <asp:ListItem>77</asp:ListItem>
                                        <asp:ListItem>78</asp:ListItem>
                                        <asp:ListItem>79</asp:ListItem>
                                        <asp:ListItem>80</asp:ListItem>
                                        <asp:ListItem>81</asp:ListItem>
                                        <asp:ListItem>82</asp:ListItem>
                                        <asp:ListItem>83</asp:ListItem>
                                        <asp:ListItem>84</asp:ListItem>
                                        <asp:ListItem>85</asp:ListItem>
                                        <asp:ListItem>86</asp:ListItem>
                                        <asp:ListItem>87</asp:ListItem>
                                        <asp:ListItem>88</asp:ListItem>
                                        <asp:ListItem>89</asp:ListItem>
                                        <asp:ListItem>90</asp:ListItem>
                                        <asp:ListItem>91</asp:ListItem>
                                        <asp:ListItem>92</asp:ListItem>
                                        <asp:ListItem>93</asp:ListItem>
                                        <asp:ListItem>94</asp:ListItem>
                                        <asp:ListItem>95</asp:ListItem>
                                        <asp:ListItem>96</asp:ListItem>
                                        <asp:ListItem>97</asp:ListItem>
                                        <asp:ListItem>98</asp:ListItem>
                                        <asp:ListItem>99</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>101</asp:ListItem>
                                        <asp:ListItem>102</asp:ListItem>
                                        <asp:ListItem>103</asp:ListItem>
                                        <asp:ListItem>104</asp:ListItem>
                                        <asp:ListItem>105</asp:ListItem>
                                        <asp:ListItem>106</asp:ListItem>
                                        <asp:ListItem>107</asp:ListItem>
                                        <asp:ListItem>108</asp:ListItem>
                                        <asp:ListItem>109</asp:ListItem>
                                        <asp:ListItem>110</asp:ListItem>
                                        <asp:ListItem>111</asp:ListItem>
                                        <asp:ListItem>112</asp:ListItem>
                                        <asp:ListItem>113</asp:ListItem>
                                        <asp:ListItem>114</asp:ListItem>
                                        <asp:ListItem>115</asp:ListItem>
                                        <asp:ListItem>116</asp:ListItem>
                                        <asp:ListItem>117</asp:ListItem>
                                        <asp:ListItem>118</asp:ListItem>
                                        <asp:ListItem>119</asp:ListItem>
                                        <asp:ListItem>120</asp:ListItem>
                                        <asp:ListItem>121</asp:ListItem>
                                        <asp:ListItem>122</asp:ListItem>
                                        <asp:ListItem>123</asp:ListItem>
                                        <asp:ListItem>124</asp:ListItem>
                                        <asp:ListItem>125</asp:ListItem>
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
                                        <asp:ListItem>60</asp:ListItem>
                                        <asp:ListItem>61</asp:ListItem>
                                        <asp:ListItem>62</asp:ListItem>
                                        <asp:ListItem>63</asp:ListItem>
                                        <asp:ListItem>64</asp:ListItem>
                                        <asp:ListItem>65</asp:ListItem>
                                        <asp:ListItem>66</asp:ListItem>
                                        <asp:ListItem>67</asp:ListItem>
                                        <asp:ListItem>68</asp:ListItem>
                                        <asp:ListItem>69</asp:ListItem>
                                        <asp:ListItem>70</asp:ListItem>
                                        <asp:ListItem>71</asp:ListItem>
                                        <asp:ListItem>72</asp:ListItem>
                                        <asp:ListItem>73</asp:ListItem>
                                        <asp:ListItem>74</asp:ListItem>
                                        <asp:ListItem>75</asp:ListItem>
                                        <asp:ListItem>76</asp:ListItem>
                                        <asp:ListItem>77</asp:ListItem>
                                        <asp:ListItem>78</asp:ListItem>
                                        <asp:ListItem>79</asp:ListItem>
                                        <asp:ListItem>80</asp:ListItem>
                                        <asp:ListItem>81</asp:ListItem>
                                        <asp:ListItem>82</asp:ListItem>
                                        <asp:ListItem>83</asp:ListItem>
                                        <asp:ListItem>84</asp:ListItem>
                                        <asp:ListItem>85</asp:ListItem>
                                        <asp:ListItem>86</asp:ListItem>
                                        <asp:ListItem>87</asp:ListItem>
                                        <asp:ListItem>88</asp:ListItem>
                                        <asp:ListItem>89</asp:ListItem>
                                        <asp:ListItem>90</asp:ListItem>
                                        <asp:ListItem>91</asp:ListItem>
                                        <asp:ListItem>92</asp:ListItem>
                                        <asp:ListItem>93</asp:ListItem>
                                        <asp:ListItem>94</asp:ListItem>
                                        <asp:ListItem>95</asp:ListItem>
                                        <asp:ListItem>96</asp:ListItem>
                                        <asp:ListItem>97</asp:ListItem>
                                        <asp:ListItem>98</asp:ListItem>
                                        <asp:ListItem>99</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>101</asp:ListItem>
                                        <asp:ListItem>102</asp:ListItem>
                                        <asp:ListItem>103</asp:ListItem>
                                        <asp:ListItem>104</asp:ListItem>
                                        <asp:ListItem>105</asp:ListItem>
                                        <asp:ListItem>106</asp:ListItem>
                                        <asp:ListItem>107</asp:ListItem>
                                        <asp:ListItem>108</asp:ListItem>
                                        <asp:ListItem>109</asp:ListItem>
                                        <asp:ListItem>110</asp:ListItem>
                                        <asp:ListItem>111</asp:ListItem>
                                        <asp:ListItem>112</asp:ListItem>
                                        <asp:ListItem>113</asp:ListItem>
                                        <asp:ListItem>114</asp:ListItem>
                                        <asp:ListItem>115</asp:ListItem>
                                        <asp:ListItem>116</asp:ListItem>
                                        <asp:ListItem>117</asp:ListItem>
                                        <asp:ListItem>118</asp:ListItem>
                                        <asp:ListItem>119</asp:ListItem>
                                        <asp:ListItem>120</asp:ListItem>
                                        <asp:ListItem>121</asp:ListItem>
                                        <asp:ListItem>122</asp:ListItem>
                                        <asp:ListItem>123</asp:ListItem>
                                        <asp:ListItem>124</asp:ListItem>
                                        <asp:ListItem>125</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </h3>
                                <div>
                                  <br />
                                   
                                    <asp:Button ID="Button1" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" runat="server" Text="Save" OnClick="Button1_Click"  />
            
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
              <h1>Verify your Data</h1>
        
            <div class="form-group">
            <asp:TextBox ID="TextBox4" ReadOnly runat="server" placeholder="Winner..." type="Ganador" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox1" ReadOnly runat="server" placeholder="Score..." type="Puntos1" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <div class="form-group">
             <asp:TextBox ID="TextBox2" ReadOnly runat="server" placeholder="Score..." type="Puntos2" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
            <br />
            <h1> Type in your data to finalize your bet</h1>
             <div class="form-group">
            <asp:TextBox ID="TxtUsuario" runat="server" placeholder="User Name..." type="Usuario" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <div class="form-group">
            <asp:TextBox ID="TxtContra" runat="server" placeholder="Pasword..." type="Pasword" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
            </div>
             <br />
            <asp:Button ID="Button2" runat="server" Height="60px" CssClass="btn-xl" BackColor="Red" BorderColor="Red" Text="Save" OnClick="Button2_Click" />
        </main>
       
            

           <video muted="muted" autoplay="" loop=""><source src="../Imagenes/Video6.mp4" type="video/mp4" /></video>  
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
        
</body>
</html>