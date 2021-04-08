<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restore_Password.aspx.cs" Inherits="tepinet.Restore_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Restore Password - Tepinet</title>
    <link rel="stylesheet" href="css/custom.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div runat="server" ID="mainDiv" class="row align-content-center text-center text-white">
                <div class="col-4"></div>
                <div class="col-4">
                    <div class="card bg-dark mx-auto">
						<div class="card-body">
							<p></p>
							<div class="card-title">
								<h2>Restaurar Contraseña</h2>
							</div>
							<p></p>
							<div class="form-group">
								<label runat="server" ID="lbl1" class="control-label">Ingrese su Email</label>
								<asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" Visible="true"></asp:TextBox>
                                <asp:Label runat="server" ID="lblEmailNotFound" CssClass="text-danger h3" Text="Email no encontrado. Porfavor regístrese" Visible="false"></asp:Label>
                                <p></p>
                                <asp:Button runat="server" ID="Btn_SearchEmail" CssClass="btn btn-success btn-block" Text="Verificar" OnClick="Btn_SearchEmail_Click" Visible="true"/>
                                <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-dark" Text="Registrarse" OnClick="btnRegister_Click" Visible="false" />
                                <asp:LinkButton runat="server" ID="lnkTryAgain" CssClass="btn btn-link" Text="volver a intentar" OnClick="lnkTryAgain_Click"></asp:LinkButton>
							</div>
                            <br />
                            <div class="form-group">
                                <p>¿Ya tienes cuenta? <a href="Login.aspx">Inicia Sesión</a></p>
							</div>
						</div>
					</div>
                </div>
                <div class="col-4"></div>
            </div>


            <div id="codeDiv" runat="server" visible="false" class="row align-content-center text-center text-white">
                <div class="col-4"></div>
                <div class="col-4">
                    <div class="card bg-dark mx-auto">
                        <div class="card-body">
                            <div class="card-title">
                                <h2> Código de Verificación </h2>
                            </div>
                            <div class="form-group">
                                <label> Envíamos a tu correo un código de verificación. Porfavor ingrésalo: </label>
                                <asp:TextBox runat="server" ID="txtCode" CssClass="form-control"></asp:TextBox>
                                <asp:Button runat="server" ID="btnVerification" CssClass="btn btn-block btn-primary" Text="Verificar" />
                                <asp:Button runat="server" ID="btnResend" CssClass="btn btn-block btn-secondary" Text="Reenviar" Enabled="false"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4"></div>
            </div>
        </div>
    </form>
</body>
</html>
