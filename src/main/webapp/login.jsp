<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="shortcut icon" href="./login.ico" type="image/x-icon">
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
                        <a class="nav-link login activa" href="#">LogIn</a>
                    </li> 
                </ul>
            </div>
        </nav>
    </header>

    <main class="d-flex justify-content-center align-items-center">
        <section class="mt-5 container" id="form-orador">
               <div class="row justify-content-center">
                   <div class="col-lg-8 col-xl-7 text-center">
                       <h2 class="titulo-gral mb-3">LogIn</h2>
                       <form action="<%=request.getContextPath()%>/LoginAdminController" method="POST">
                           <div class="row justify-content-center">
                               <div class="col-8 mb-3 mb-4">
                                   <input type="text" class="form-control" name="nombre" placeholder="Usuario" aria-label="Nombre" required>  
                               </div>
                                <div class="col-8 mb-3 mb-4">
                                  <input type="password" class="form-control" name="password" placeholder="Contraseña" aria-label="Password" required>
                                </div>
                           </div>
                           <div class="row justify-content-center">
                               <div class="col-8 mb-3">
                                   <div class="d-grid">
                                       <button type="submit" class="btn btn-lg btn-form btnLogin">LogIn</button>
                                   </div>
                               </div>
                           </div>
                       </form>
                       <h5>Usuario: admin</h5>
                       <h5>Contraseña: 1234</h5>
                   </div>
               </div>
           </section>
       </main>
	<jsp:include page="footer.jsp"/>		
  </body>
</html>
