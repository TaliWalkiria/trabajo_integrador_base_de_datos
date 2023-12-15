<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de oradores</title>
    <link rel="shortcut icon" href="./listado.ico" type="image/x-icon">
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
                        <a class="nav-link login" href="login.jsp">LogIn</a>
                    </li> 
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <section class="container mt-5 mb-4" id="restoOradores">
            <h2 class="titulo-gral  text-center">Conoce a todos los oradores que se presentan</h2>
          
            <div class="row tabla">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Tema</th>
                      </tr>
                    </thead>
                     <% 
                          //codigo java
                          //obtener el listado desde el request
                          //se guardo bajo el nombre de "listado"
                          List<Orador> listado = (List<Orador>)request.getAttribute("listado");
                      %>
                    <tbody>
                         <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
                       <%
                           for( Orador  unOrador : listado) {
                       %>
                      <tr>
                        <th scope="row"><%=unOrador.getId()%></th>
                        <td><%=unOrador.getNombre() %></td>
                        <td><%=unOrador.getApellido() %></td>
                        <td><%=unOrador.getTema() %></td>
                      </tr>
                       <%
                           }
                         %>
                    </tbody>
                  </table>
            </div>
      </section>
    </main>
	<jsp:include page="footer.jsp"/>
  </body>
</html>
		