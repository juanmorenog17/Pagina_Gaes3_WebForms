<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebApplicationGAES3.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <title>Contacto | Fast Dispatch</title>
    <meta name="description" content="Sena CSF, Bogotá Colombia, Proyecto final, Pagina Web">
    <meta name="keywords" content="Programas, Diseño web, Contabilidad, Programacion, Proyecto, GAES">
    <meta name="Author" content="Fast Dispatch">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/Logo/logo_small_icon_only.png" />
    <!--<link rel="shortcut icon" type="image/x-icon" href="/Logo/Icono.ico" />-->

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        /*Server hidden*/
        .ultimo + div {
            visibility: hidden;
        }
    </style>

</head>
<body>

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
                            <li><a class="dropdown-item" href="/WebForm.aspx">Contacto</a></li>
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





    <div class="container">


        <form id="form1" runat="server" style="margin: 40px 0px 40px 0px;">
            <div>


                <div class="formtitle" align="center">
                    <h1>Contáctanos</h1>
                    <h5>Ingresa tu datos y nuestro equipo se pondrá en contacto contigo</h5>
                </div>

                <hr />
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Nombre Completo" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="nombre" runat="server" CssClass="form-control" Width="70%" placeholder="Ingresa tu nombre" required="required"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label2" runat="server" Text="Telefono" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="telefono" runat="server" CssClass="form-control" Width="70%" placeholder="Ingresa tu teléfono" required="required"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label3" runat="server" Text="No. Identificación" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="id" runat="server" CssClass="form-control" Width="70%" placeholder="Ingresa tu número de identificación" required="required"></asp:TextBox>
                </div>

                <div class="correo">
                    <asp:Label ID="Label4" runat="server" Text="Correo electrónico" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="correo" runat="server" CssClass="form-control" Width="70%" placeholder="ejemplo@gmail.com" required="required"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label5" runat="server" Text="Ciudad" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="ciudad" runat="server" CssClass="form-control" Width="70%" placeholder="Ingresa tu ciudad de residencia" required="required"></asp:TextBox>
                </div>
                <br />
                <br />


                <div>
                    <asp:Label ID="Label6" runat="server" Text="Describe la situación" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="situacion" TextMode="multiline" Columns="50" Rows="5" runat="server" CssClass="form-control" Width="70%" placeholder="Envianos tu mensaje" required="required"></asp:TextBox>
                </div>
                <br />
                <br />


                <asp:Button ID="btnEnviar" runat="server" Text="Enviar datos" CssClass="btn btn-primary" OnClick="btnEnviar_Click" />




            </div>
        </form>

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









    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->

    <!--Div host none-->
    <div class="ultimo"></div>

</body>

</html>
