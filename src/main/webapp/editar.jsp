<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador");
%>
<!doctype html>
<html lang="es">
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edicion de oradores</title>
    <link rel="shortcut icon" href="./editar.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilos.css">
</head>
	<body>
		   <header>
	        <nav class="navbar navbar-expand-lg container navbar-dark">
	            <a href="./index.jsp">
	                <img src="./assets/img/codoacodo.png" alt="Logo de Codo a Codo 4.0">            
	            </a>
	            <h2>Conf Bs As</h2>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-end">
	                    <li class="nav-item">
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#conferencia">La conferencia</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#lugarFecha">El lugar y la fecha</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link" aria-current="page" href="index.jsp#formularioOrador">Conviértete en orador</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link colorVerde" href="./pages/tickets.html">Comprar tickets</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link login activa" href="login.jsp">LogIn</a>
	                    </li> 
	                </ul>
	            </div>
	        </nav>
	    </header>
		<main class="mb-5">
		    <section id="formularioModificarOrador" class="formularioOrador">
	            <h2>
	                Modificar datos del Orador
	            </h2>
	            <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST" class="recuadrosFormulario">
	            	<input type="hidden" name="id" value="<%=orador.getId()%>">
	                <div>
	                    <input type="text" id="validationCustom02" name="nombre" placeholder="Nombre" value="<%=orador.getNombre()%>" required>
	                    <input type="text" id="apellido" name="apellido" placeholder="Apellido" value="<%=orador.getApellido()%>" required>
	                </div>
	                <div>
	                    <input type="email" id="mail" name="mail" placeholder="correo@youmail.com" value="<%=orador.getMail()%>" required>
	                </div>
	                    <textarea name="tema" id="exampleFormControlTextarea1" cols="55" rows="5" placeholder="<%=orador.getTema()%>" required><%=orador.getTema()%> </textarea>
	                </div>
	                <p>Recuerda incluir un título para tu charla</p>
	                <div>
	                    <button type="submit" class="btnEnviar btnModificar btn btn-form">Modificar</button>
	                </div>
	            </form>
	            <div class="btn-volver container vh-10 d-flex justify-content-center align-items-center">
		        	<div class="text-center">
		        	<a class="btn bg-success" href="./login.jsp">Volver</a>
		    	</div>
       		</section>
		</main>
		<jsp:include page="footer.jsp"/>
	</body>
</html>