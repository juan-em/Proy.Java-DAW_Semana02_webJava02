<%-- 
    Document   : prueba_java1
    Created on : 01/09/2022, 01:31:06 PM
    Author     : jhons
--%>

<%@page import="java.util.Arrays"%>
<%@page import="com.miempresa.webjava02.Utilidades"%>
<%@page import="com.miempresa.webjava02.Calculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%! String cadena = "Bienvenidos a JSP";%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">Declaración de variable</div>
                        <div class="card-body">
                            <h5 class="card-title">Variable cadena</h5>
                            <p class="card-text"><%= cadena%></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Uso de libreria Date</div>
                        <div class="card-body">
                            <h5 class="card-title">Fecha Actual</h5>
                            <p class="card-text"><% out.println(new Date());%></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Uso de libreria Date</div>
                        <div class="card-body">
                            <h5 class="card-title">Fecha Actual</h5>
                            <p class="card-text"><% System.out.println(new Date());%></p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Invocación de clase Calculo</div>
                        <div class="card-body">
                            <h5 class="card-title">Uso de clase</h5>
                            <p class="card-text">
                                <%
                                    Calculo obj = new Calculo();
                                    int men = obj.menor(10, 20);
                                    int may = obj.mayor(10, 20);
                                    out.print("Menor: " + men + "<p>");
                                    out.print("Mayor: " + may + "<p>");
                                %>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Invocación de clase Calculo</div>
                        <div class="card-body">
                            <h5 class="card-title">Uso de clase</h5>
                            <p class="card-text">
                                <%
                                    Utilidades obj1 = new Utilidades();
                                    int mayor = obj1.mayor(12,13,14);
                                    int[] arr = new int[]{12,13,14};
                                    int suma = obj1.total(arr);
                                    
                                    //Página WEB
                                    out.println("Arreglo de enteros:"+"<br>");
                                    out.println(Arrays.toString(arr));
                                    out.print("<p>");
                                    out.println("El mayor es: " + mayor+"<br>");
                                    out.println("La suma de todos es: " + suma+"<br>");
                                    
                                    //Consola   
                                    System.out.println("=====================");
                                    System.out.println("Arreglo de enteros:");
                                    System.out.println(Arrays.toString(arr));
                                    System.out.println("=====================");
                                    System.out.println("El mayor es: " + mayor);
                                    System.out.println("La suma de todos es: " + suma);
                                %>
                            </p>
                        </div>
                    </div>
                </div>           


            </div>
        </div>
    </body>
</html>

