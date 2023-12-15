<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Integrador Back</title>
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilos.css">
</head>
<body>
    
    <!-- aca va el header.jsp -->
	<jsp:include page="header.jsp"/>

    <main>
        <section id="oradores" class="oradores container">
            <h2>
                <div>CONOCE A LOS</div>
                ORADORES
            </h2>
            <div class="tarjetas row justify-content-center">
                <div class="tarjeta card col-md-3">
                    <img src="./assets/img/steve.jpg" alt="Steve Jobs" loading="lazy">
                    <div class="cuerpoTarjeta container">
                        <h4 class="colorNaranja">JavaScript</h4>
                        <h4 class="colorCeleste">React</h4>
                        <h3 class="tituloNombre">Steve Jobs</h3>
                        <p>La innovaci�n no solo se trata de tecnolog�a, se trata de comprender las necesidades y deseos de las personas en un nivel profundo. En esta charla no hablar� de los productos que fabricamos, sino de las experiencias que dise�amos. Los espero!</p>
                    </div>
                </div>
                <div class="tarjeta card col-md-3">
                    <img src="./assets/img/bill.jpg" alt="Bill Gates" loading="lazy">
                    <div class="cuerpoTarjeta container">
                        <h4 class="colorNaranja">JavaScript</h4>
                        <h4 class="colorCeleste">React</h4>
                        <h3 class="tituloNombre">Bill Gates</h3>
                        <p> En esta charla hablar� sobre el incre�ble poder de la tecnolog�a para transformar vidas y crear cambios positivos. Vivimos en una era digital donde la innovaci�n tiene el potencial de resolver algunos de los desaf�os m�s apremiantes del mundo.</p>
                    </div>
                </div>
                <div class="tarjeta card col-md-3">
                    <img src="./assets/img/ada.jpeg"alt="Ada Lovelace" loading="lazy">
                    <div class="cuerpoTarjeta container">
                        <h4 class="colorGris">Negocios</h4>
                        <h4 class="colorRojo">Startups</h4>
                        <h3 class="tituloNombre">Ada Lovelace</h3>
                        <p>Quiero compartir con ustedes mi pasi�n por la ciencia y la matem�tica, y c�mo estas disciplinas pueden coexistir armoniosamente con la creatividad y la imaginaci�n; en este mundo donde las mujeres rara vez tienen voz en el �mbito cient�fico</p>
                    </div>         
                </div>
            </div>
        </section>

        <section class="container mb-4 text-center" id="restoOradores">
            <a class="btn btn-form btnOradores" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce al resto de los ORADORES</a>
            <!--<a class="btn btn-outline-success btnOradores" href="./pages/listado.html">Conoce al resto de los ORADORES</a>-->
        </section>

        <section id="lugarFecha" class="lugarFecha row">
            <img src="./assets/img/honolulu.jpg" alt="Honolulu" class="honolulu col-md-6" loading="lazy">
            <div class="lugar col-md-6">
                <h2>Bs As - Octubre</h2>
                <p>Buenos Aires es la provincia y localidad m�s grande del estado de Argentina, en los Estados Unidos. Honolulu es la m�s sure�a de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al �rea urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad - condado consolidada que cubre toda la ciudad (aproximadamente 600 km� de superficie).</p>
                <a class="btnConoceMas" href="./pages/error404.html">Conoc� m�s</a>
            </div>
        </section>

        <section class="container">
            <h3 class="encontranosEn">ENCONTRANOS EN:</h3>
            <iframe class="container mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.1366237167395!2d-58.39758742425996!3d-34.60070657295539!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccabfe23f5e3b%3A0x6f90fe1eadb235cf!2sMuseo%20del%20Agua%20y%20de%20la%20Historia%20Sanitaria!5e0!3m2!1ses!2sar!4v1692228848422!5m2!1ses!2sar" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>

        <section id="formularioOrador" class="formularioOrador">
            <h2>
                <div>CONVI�RTETE EN UN</div>
                ORADOR
            </h2>
            <p>An�tate como orador para dar una charla ignite. Cu�ntanos de qu� quieres hablar!</p>
            <form action="<%=request.getContextPath()%>/CreateOradorController" method="POST" class="recuadrosFormulario">
                <div>
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" required>
                    <input type="text" id="apellido" name="apellido" placeholder="Apellido" required>
                </div>
                <div>
                    <input type="email" id="mail" name="mail" placeholder="correo@youmail.com" required>
                </div>
                    <textarea name="tema" id="tema" cols="55" rows="5" placeholder="Sobre qu� quieres hablar?" required></textarea>
                </div>
                <p>Recuerda incluir un t�tulo para tu charla</p>
                <div>
                    <input type="submit" value="Enviar" class="btn btn-form btnEnviar">
                </div>
            </form>
        </section>
    </main>

    <aside>
        <section class="publicidadCoto row">
            <div class="text-center publicidad">
                <p>PUBLICIDAD</p>
            </div>
            <div class="col-md-6 videoCoto">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/11nBi19B670?si=h5kNBL3DcX7o8NIk&amp;controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
            <div class="col-md-6 textoCoto">
                <img src="./assets/img/logo_coto.png" alt="Logo de Coto"> 
                <!--<h1>VEN� A COTO!</h1>-->
                <p>Este fin de semana aprovecha las ofertas que tenemos para vos! Hay mas de 3000 productos en descuento!!! Adem�s con tu compra, participas en el sorteo por uno de los 1500 changos de nuestro aniversario! Te vas a perder esta oportunidad???</p>
                <div class="btnEnlaceCoto">
                    <a href="https://www.coto.com.ar/">COTO, YO TE CONOZCO!</a>
                </div>
            </div>
        </section>
    </aside>
    
    <!-- aca va el footer.jsp -->
	<jsp:include page="footer.jsp"/>
    