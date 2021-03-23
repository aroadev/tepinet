<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tepinet.Backend.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login - Tepinet </title>
    <link rel="stylesheet" href="css/custom.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container px-4 py-5 mx-auto text-white bg-dark">
            <div class="card card0 bg-dark">
                <div class="d-flex flex-lg-row flex-column-reverse bg-dark">
                    <div class="card card1 bg-dark">
                        <div class="row justify-content-center my-auto bg-dark">
                            <div class="col-md-8 col-10 my-5">
                                <div class="row justify-content-center px-3 mb-3"> <img id="logo" src="img/logo.png"/> </div>
                                <h6 class="msg-info">Iniciar Sesión</h6>
                                <div class="form-group"> <label class="form-control-label text-muted">Username</label> <asp:TextBox runat="server" ID="txtUser" CssClass="form-control"></asp:TextBox> </div>
                                <div class="form-group"> <label class="form-control-label text-muted">Password</label> <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control"></asp:TextBox> </div>
                                <div class="row justify-content-center my-3 px-3"> <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-block btn-primary" Text="Iniciar Sesión" OnClick="btnLogin_Click"/> </div>
                                <div class="row justify-content-center my-2"> <a href="#"><small class="text-muted">¿Olvidó su contraseña?</small></a> </div>
                            </div>
                        </div>
                        <div class="bottom text-center mb-5">
                            <p href="#" class="sm-text mx-auto mb-3"><button class="btn btn-warning ml-2">Crear Cuenta</button></p>
                        </div>
                    </div>
                    <div class="card card2 bg-dark">
                        <div class="my-auto mx-md-5 px-md-5 right">
                            <h3 class="text-white">El software libre pone a la gente a disposición de su conocimiento.</h3> <small class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
