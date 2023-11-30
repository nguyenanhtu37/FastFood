<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Thực đơn:</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="c">
                                <li class="list-group-item text-white"><a href="category?cid=${c.getcid()}">${c.getCname()}</a></li>
                            </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Latest product</div>
                            <div class="card-body">
                            <img class="img-fluid" src="${l.getImage()}" />
                            <h5 class="card-title">${l.getName()}</h5>
                            <p class="card-text">${l.getTitle()}</p>
                            <p class="bloc_left_price">${l.getPrice()} $</p>
                        </div>
                       
                        
                    </div>
                </div>
        <script>
                document.getElementById('${cid}').style.color = "blue";
        </script>    