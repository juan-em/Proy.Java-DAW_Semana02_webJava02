<%-- 
    Document   : prueba_java3
    Created on : 04/09/2022, 01:11:52 PM
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
        <title>JSP Page 3</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">Lista orden ascendente</div>
                        <div class="card-body">
                            <h5 class="card-title">Ordenando</h5>
                            <p class="card-text">
                                <%
                                    ArrayList<Integer> arr =  new ArrayList();
                                    ArrayList<Integer> rpta = new ArrayList();
                                    arr.add(-8);
                                    arr.add(0);
                                    arr.add(1);
                                    arr.add(9);
                                    arr.add(-7);
                                    arr.add(15);
                                    int len = arr.size();
                                    out.println("Lista original: "+arr);
                                    for (int x = 0; x < len; x++){
                                        int min = arr.get(0);
                                        for (int i = 0; i < arr.size(); i++){
                                            if (arr.get(i) <= min){
                                                min = arr.get(i);
                                            }
                                            else{
                                                min = min;
                                            }                                           
                                        }
                                        rpta.add(min);
                                        arr.remove(arr.indexOf(min));
                                    }
                                    out.println("Lista ordenada: "+rpta);
                                %>
                            </p>
                        </div>
                    </div>
                </div>          
            </div>
        </div>
    </body>
</html>

