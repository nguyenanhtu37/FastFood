<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fast Food</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="icon" type="image/png" href="https://cdn3.vectorstock.com/i/1000x1000/98/62/logo-for-fast-food-vector-23019862.jpg">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
          <style>
            img{
                width: 200px;
                height: 250px;
            }
            button{
                border-radius: 8px ;
                margin: 3px;
            }
            button:hover{
                background-color: lightgrey;
            }
        </style>
        <% 
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        %>
    </head>
    <body>
        
            <jsp:include page="Menu.jsp"></jsp:include>
            
        <div class="container ">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Home</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                
            <jsp:include page="Left.jsp"></jsp:include>

                <div class="col-sm-9">
                    <div class="row">
                        <c:forEach items="${listPaging}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?jid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} </p>
                                            </div>
                                            <div class="col">
                                                <a href="addToCart?fastfoodid=${o.id}" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    
                        
                   
                      <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                         <c:forEach begin="1" end="${endP}" var="i" >
                            <li class="page-item">
                                <button>
                                    <a id="${i}" href="home?index=${i}">${i}</a>
                                </button> 
                            </li>
                          </c:forEach>
                          
                        </ul>
                      </nav>
          </div>
            
        </div>
            </div>
        <jsp:include page="Footer.jsp"></jsp:include>
        <script>
                document.getElementById('${index}').style.color = "orange";
        </script>                                                            
       
        
    </body>
</html>

