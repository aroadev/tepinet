<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="tepinet.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Tepinet - Inicio </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/esilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
                <a href="#">Inicio</a>
                <a href="#">Acerca de</a>
                <a href="#">Contacto</a>
                <a href="https://pastebin.com/aeXezBa7"> Descargas </a>
                <a href="#"><asp:Label runat="server" ID="lblUser"></asp:Label></a>
                <a href="#"><asp:LinkButton runat="server" ID="lnkCloseSession" Text="Cerrar Sesión" OnClick="lnkCloseSession_Click"></asp:LinkButton></a>
            </nav>
            <section class="textos-header">
                <h1>Bienvenidos a su tienda favorita </h1>
                <h2>Dónde encontrarás los mejores artículos </h2>
            </section>
            <div class=" wave"style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 384.59,21.20 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
        </header>
        <main>
            <section class="contenedor sobre-nosotros">
                <h2 class="titulo">Nuestro producto</h2>
                <div class="contenedor-sobre-nosotros">
                    <img src="img/ilustracion1.jpg" alt=""class="imagen-about-us"">
                    <div class="contenido-textos">
                        <h3><span>1</span>los mejores productos</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta unde eum molestiae, assumenda sapiente provident in exercitationem? Qui nulla minus, obcaecati ullam soluta eius, labore sequi tempora cumque dolore quos.</p>
                        <h3><span>2</span>los mejores juegos</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta unde eum molestiae, assumenda sapiente provident in exercitationem? Qui nulla minus, obcaecati ullam soluta eius, labore sequi tempora cumque dolore quos.</p>
                    </div>
                </div>
            </section>
            <section class="Portafolio">
                <div class="contenedor">
                    <h2 class="tiulo">Portafolio</h2>
                    <div class="galeria-port">
                        <div class="imagen-port">
                            <img src="img/img1.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Servicios</p>
                        </div>
                        </div>
                        <div class="imagen-port">
                            <img src="img/img2.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Videojuegos</p>
                            </div>
                        </div>
                        <div class="imagen-port">
                            <img src="img/img4.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Ports PSX</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img5.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Ports 360</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img8.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Adobe Cloud</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img9.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Office</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img10.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p><a href="">Adobe Photoshop</a></p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img11.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p><a href="t.ly/5pyh"> Adobe Illustrator </a></p>
                            </div>
                                <a href="t.ly/5pyh"> Descargar </a>
                        </div><div class="imagen-port">
                            <img src="img/img12.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Adobe Premiere Pro</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img13.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>After Effects</p>
                            </div>
                        </div><div class="imagen-port">
                            <img src="img/img14.jpg" alt="">
                            <div class="hover-galeria">
                                <img src="img/icono.png" alt="">
                                <p>Sony Vegas</p>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="clientes contenedor">
                <h2 class="titulo">Que dicen nuestros clientes</h2>
                <div class="cards">
                    <div class="card">
                        <img src="img/usuario1.jpg" alt="">
                        <div class="contenido-texto-card">
                            <h4>Name</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae, impedit?</p>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/usuario2.jpg" alt="">
                        <div class="contenido-texto-card">
                            <h4>Name</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae, impedit?</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="about-service">
                <div class="contenedor">
                    <h2 class="titulo">Nuestros servicios</h2>
                    <div class="servicio-cont">
                        <div class="servicio-ind">
                            <img src="img/ilustracion4.jpg" alt="">
                            <h3>Videojuegos para consolas crackeadas.</h3>
                            <P>contamos con videojuegos crackeados offline para consolas de old gen (PS3/XBX360).</P>
                        </div>
                        <div class="servicio-ind">
                            <img src="img/ilustracion2.png" alt="">
                            <h3>Videojuegos y Software de PC</h3>
                            <P>Contamos con software y videojuegos de PC.</P>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <footer>
            <div class="contenedor-footer">
                <div class="content-foo">
                    <h4>Phone</h4>
                    <p>3455356424</p>
                </div>
                <div class="content-foo">
                    <h4>Email</h4>
                    <p>support@tepinet.org</p>
                </div>
                <div class="content-foo">
                    <h4>Location</h4>
                    <p>México</p>
                </div>
            </div>
            <h2 class="Titulo-final align-content-center text-center">&copy; Carlos A | Manuel C | Hamed M | Andres G</h2>
        </footer>
    </form>
</body>
</html>
