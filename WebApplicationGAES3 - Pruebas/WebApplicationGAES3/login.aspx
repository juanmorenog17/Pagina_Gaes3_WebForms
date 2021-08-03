<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplicationGAES3.datalogin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!--Libreria CDN Jquery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Login | Fast Dipatch</title>
</head>
<body class="none">

    <nav class="navbar navbar-expand-lg navbar-light bg-warning" style="text-align: none;">
        <div class="container-fluid" style="padding: 20px;">
            <a class="navbar-brand" href="#" style="color: black; font-size: none;">FAST DISPATCH </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon" style="color: red;"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">Navegar
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/index.html">Inicio</a></li>
                            <li><a class="dropdown-item" href="/HTML/Nosotros.html">Nosotros</a></li>
                            <li><a class="dropdown-item" href="/HTML/serv.html">Servicios</a></li>
                            <li><a class="dropdown-item" href="/HTML/Blog.html">Blog</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Contacto</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <img src="/Logo/logo_large.png" alt="" width="80%" style="margin: 10%;">
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>




    <div class="container" style="margin-top: 80px; margin-bottom: 80px; width: 40%">
        <div>
            <form id="form1" runat="server">


                <div class="align-content-center" style="text-align: center;">
                    <asp:Label ID="lblBienvenida" CssClass="h2" runat="server" Text="Bienvenido (a)"></asp:Label>
                </div>

                <br />

                <div class="form-control">

                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Ingresa tu usuario"></asp:TextBox>
                    </div> <br />

                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
                        <asp:TextBox ID="tbPassword" CssClass="form-control" runat="server" placeholder="Ingresa tu Contraseña"></asp:TextBox>
                    </div>

                    <hr />


                    <div style="text-align: center;">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-primary" OnClick="btnIngresar_Click" />
                    </div>

                </div>
            </form>
        </div>
    </div>








    <!--Footer-->

    <footer class="text-center text-white" style="background-color: #14213D;">
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center text-white p-5" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2021 Copyright: Fast Dispatch
            <br>
            Página diseñada con el proposito de mostrar la transformación de la creatividad al desarrollo web.
        </div>
        <!-- Copyright -->
    </footer>

</body>
</html>
