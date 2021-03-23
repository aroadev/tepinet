<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="tepinet.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Register - Tepinet </title>
	<link rel="stylesheet" href="css/custom.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center align-content-center text-white">
            <div class="row">
				<div class="col-4"></div>
				<div class="col-4">
					<div class="card bg-dark">
						<div class="card-body">
							<p></p>
							<div class="card-title">
								<h2>Crear una Cuenta</h2>
							</div>
							<p></p>
							<div class="form-group">
								<label class="control-label" for="signupName">Username</label>
								<asp:TextBox runat="server" ID="txtUser" CssClass="form-control"></asp:TextBox>
							</div>
							<p></p>
							<div class="form-group">
								<label class="control-label" for="signupEmail">Email</label>
								<asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
							</div>
							<p></p>
							<div class="form-group">
								<label class="control-label" for="signupEmailagain"> Nombre </label>
								<asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
							</div>
							<p></p>
							<div class="form-group">
								<label class="control-label" for="signupPassword">Contraseña</label>
								<asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
							</div>
							<p></p>
							<div class="form-group">
								<label class="control-label" for="signupPasswordagain">Confirmar Contraseña</label>
								<asp:TextBox runat="server" ID="txtConfirm" CssClass="form-control" TextMode="Password"></asp:TextBox>
							</div>
							<p></p>
							<div class="form-group">
								<asp:Button runat="server" ID="btnRegister" CssClass="btn btn-primary btn-block" OnClick="btnRegister_Click" Text="Registrate"/>
							</div>
							<p></p>
							<p class="form-group">Creando tu cuenta, aceptas nuestros <a href="#">términos de servicio</a> y nuestras <a href="#">políticas de privacidad</a>.</p>
							<hr>
							<p>¿Ya tienes cuenta? <a href="#">Inicia Sesión</a></p>
						</div>
					</div>
				</div>
				<div class="col-4"></div>
			</div>
        </div>
    </form>
</body>
</html>
