<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
   
</style>


<nav class="navbar navbar-expand-md navbar-dark" style="background-color: black" >
            <div class="container">
                <img src="images/logo.jpg" alt="Logo image" style="height: 50px; width: 50px; object-fit:cover"/>
                <a class="navbar-brand" href="home" style="padding-left: 10px">MstrChef</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                    
                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        
                        <c:if test="${sessionScope.acc.isSell == 1}">
                        <li class="nav-item" style="padding-top: 8px; padding-right: 20px">
                            <a class=""nav-link" href=""  style="color: grey"> Manager Account</a>
                        </li> 
                        </c:if>
                        <c:if test="${sessionScope.acc.isSell == 1}">
                        <li class="nav-item" style="padding-top: 8px; padding-right: 10px;">
                            <a class=""nav-link" href="manager" style="color: grey"> Manager Product</a>
                        </li>
                        </c:if>

                              
                        <c:if test="${sessionScope.acc != null}">
                        </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                        </li>
                           <li class="nav-item">
                            <a class="nav-link" href="logout">Logout</a>
                        </li> 
                        </c:if>
                        
                        <c:if test="${sessionScope.acc == null}">
                           <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Login</a>
                        </li> 
                        </c:if>
                    </ul>
<c:if test="${sessionScope.acc.isSell == 1}">
                    <form action="search" method="POST" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="Cart.jsp">
                            <i class="fa fa-shopping-cart"></i> Cart
                            <span class="badge badge-light"></span>
                        </a>
                    </form>
                       </c:if>     
                </div>
            </div>
        </nav>
                            <div class="abc" style="position: relative">
                                <img src="images/bg.jpg" alt="Background image" style="height: 500px; width: 100%"/>
                                <div class="container" style="position: absolute; bottom: 5%; color: white; text-shadow: 0px 0px 10px black; font-weight: bold; font-family: sans-serif">
                <h1 class="jumbotron-heading">MstrChef Fast Food</h1>
                <p class="lead  mb-0">Chào mừng bạn đến với quán ăn nhanh của chúng tôi - nơi tận hưởng hương vị ngon lành và phục vụ nhanh chóng! </p>
                <p class="lead  mb-0">Chúng tôi hiểu rõ rằng thời gian của bạn quý giá, vì vậy chúng tôi luôn đảm bảo phục vụ nhanh chóng và chất lượng.</p>
                <p class="lead  mb-0">Chúng tôi hy vọng sẽ mang đến cho bạn một trải nghiệm ẩm thực đáng nhớ và đáp ứng mọi mong đợi của bạn.</p>
                <p class="lead  mb-0">Xin cảm ơn và chúc bạn có một bữa ăn thật ngon miệng!</p>
            </div>
                            </div>
                            
<!--                            <section class="jumbotron " style="padding-top: 0px; height: calc(100vh - 66px)">-->
                               
            
        <!--</section>-->
                            
