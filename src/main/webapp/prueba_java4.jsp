<%-- 
    Document   : prueba_java4.jsp
    Created on : 04/09/2022, 06:45:54 PM
    Author     : jhons
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page 4</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">Número primo</div>
                        <div class="card-body">
                            <h5 class="card-title">¿Es primo?</h5>
                            <p class="card-text">
                                <%
                                    int num = 79;
                                    out.println("El número a evaluar es: "+num+"<br>");
                                    if (num == 2){
                                        out.println("EL número "+num+" ES primo");
                                    }
                                    else {
                                        for(int i=2; i<num ; i++){
                                            if (num%i == 0){
                                                out.println("EL número "+num+" NO es primo");
                                                break;
                                            }
                                            else if (i == num-1){
                                                out.println("EL número "+num+" ES primo");
                                                break;
                                            }
                                        }
                                    }                              
                                %>
                            </p>
                        </div>
                    </div>
                </div>          
            </div>
        </div>
    </body>
</html>
