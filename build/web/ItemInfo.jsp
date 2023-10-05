<%-- 
    Document   : ItemInfo
    Created on : Jul 1, 2023, 6:04:08 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shop H2MAK</title>
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/bootstrap.min.css" rel="stylesheet"/>
        <link href="CSS/ItemInfo1.css" rel="stylesheet" />
        
        <script type="text/javascript">

            function incrementValue(a)
            {
                var value = parseInt(document.getElementById('number').value, 10);
                value = isNaN(value) ? 0 : value;
                if (value < a) {
                    value++;
                    document.getElementById('number').value = value;
                }
            }
            function decrementValue()
            {
                var value = parseInt(document.getElementById('number').value, 10);
                value = isNaN(value) ? 0 : value;
                if (value > 1) {
                    value--;
                    document.getElementById('number').value = value;
                }
            }

        </script>
    </head>
    <body>
        <!--Header-->
        <%@include file="header.jsp" %> 

        <div class="item_order">
            <!-- Slider -->
            <div class="col-md-4 item_order_img">
                <div style="width: 100%; height: 100%;" class="col-md-12">
                    <!--Bắt đầu slider-->
                    <div style="width: 100%; height: 100%;" id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div style="width: 100%; height: 100%;" class="carousel-inner">
                            <c:set var="p" value="${requestScope.product}" />
                            <div  style="width: 100%; height: 100%;" class="item active">
                                <img style="width: 100%; height: 100%;" src="${p.image02}" alt="image02">
                            </div>

                            <div style="width: 100%; height: 100%;" class="item">                          
                                <img style="width: 100%; height: 100%;" src="${p.image03}" alt="">
                            </div>

                            <div style="width: 100%; height: 100%;" class="item">
                                <img style="width: 100%; height: 100%;" src="${p.image04}" alt="">
                            </div>
                        </div>

                        <!-- Controls -->


                        <a
                            style="opacity: 0;"
                            class="left carousel-control slideshow_button"
                            href="#carousel-example-generic"
                            role="button"
                            data-slide="prev">          
                        </a>

                        <a
                            style="opacity: 0;"
                            class="right carousel-control slideshow_button"
                            href="#carousel-example-generic"
                            role="button"
                            data-slide="next">            
                        </a>
                    </div>
                    <!--Kết thúc slider-->
                </div>  
            </div>
            
            <!-- Product Info -->                
            <div class="col-md-4 item_order_info">
                <c:set var="p" value="${requestScope.product}" />
                <div class="item_order_info_title">
                    <h4>${p.productName}</h4>
                </div>
                <div class="item_order_review">
                    <div class="item_order_review_info">            
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                    </div>
                    <div class="item_order_review_info">
                        <p>(5.0)</p>
                    </div>
                    <div class="item_order_review_info">
                        <p>16 reviews</p>
                    </div>
                    <div class="item_order_review_info">
                        <p>${p.sold} sold</p>
                    </div>
                </div>
                <div class="item_order_price">
                    <p>${p.oldPrice}$</p>
                    <p>${p.newPrice}$</p>
                </div>
                <div class="item_color_type">
                    <div class="item_color_title">
                        <p>Select type:</p>
                    </div> 
                    <div class="item_color_opt">            
                        <div class="item_color_opt_check">
                            <p>Black</p>
                        </div>
                        <div class="item_color_opt_check">
                            <p>Yellow</p>
                        </div>
                        <div class="item_color_opt_check">
                            <p>Red</p>
                        </div>
                        <div class="item_color_opt_check">
                            <p>Sky Blue</p>
                        </div>
                        <div class="item_color_opt_check">
                            <p>Purple</p>
                        </div>
                        <div class="item_color_opt_check">
                            <p>White</p>
                        </div>
                    </div> 
                </div>
                <br>
                <!-- Counter -->
                <form action="addcart" method="get">
                    <div class="item_quantity">
                        <div style="width: 100%">
                            <p>Select quantity:</p> 
                        </div>                               
                        <div style="margin-left: -5%;" class="container">
                            <input style="width: 7%;" type="button" onclick="decrementValue()" value="-" />
                            <input style="display: none;" name="productID" value="${p.productID}"/>
                            <input style="width: 7%; text-align: center;" type="text" name="quantity" value="1" maxlength="2" max="10" size="1" id="number" readonly/>
                            <input style="width: 7%;" type="button" onclick="incrementValue('${p.available}')" value="+" />
                        </div>
                    </div>

                    <div style="display: flex;">
                        <div class="item_order_add">
                            <i class='bx bx-message-alt-add'></i>   
                            <div class="item_order_add_title">
                                <button style="background: none; border: none;"><p>Add to Cart</p></button>
                            </div>
                        </div>                                              
                        
                        <div style="margin-left: 10%;" class="item_order_add">
                            <i class='bx bx-package'></i>   
                            <div class="item_order_add_title">
                                <button style="background: none; border: none;"><p>Buy now</p></button>
                            </div>
                        </div> 
                    </div>
                </form>
                        
            </div>
        </div>

        <div class="item_descript">
            <div class="col-md-5 product_detail">
                <div style="box-shadow: none;" class="product_details">
                    <div style="box-shadow: none;" class="product_detail_title">
                        <h4>Product details</h4>
                    </div>
                    <div class="product_detail_table">
                        <table class="product_detail_table_info">                       
                            <tr>     
                                <th>Brand</th>
                                <c:set var="c" value="${requestScope.category}" />
                                <td>${c.categoryName}</td>  
                            </tr>
                            <tr>
                                <th>Release date</th>
                                <td>09/2022</td>
                            </tr>
                            <tr>
                                <th>Status</th>
                                <td>New</td>
                            </tr>
                            <tr>
                                <th>Origin</th>
                                <td>China</td>
                            </tr>
                            <tr>
                                <th>Warranty (month)</th>
                                <td>12</td>
                            </tr>
                            <tr>
                                <th>Weight</th>
                                <td>206g</td>
                            </tr>
                            <tr>
                                <th>CPU version</th>
                                <td>Apple A16 Bionic</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="product_descript">
                    <div style="box-shadow: none;" class="product_descript_title">
                        <h4>Description</h4>
                    </div>
                    <div class="product_descript_info">
                        <p>
                            The iPhone 14 Pro and iPhone 14 Pro Max are smartphones designed, developed, and marketed by Apple Inc.
                        </p>
                        <p>
                            They are the sixteenth-generation flagship iPhones, succeeding the iPhone 13 Pro and iPhone 13 Pro Max.
                        </p>
                        <p>
                            The devices were unveiled alongside the iPhone 14 and iPhone 14 Plus during the Apple Event at Apple Park in Cupertino, California, on September 7, 2022. Pre-orders for the iPhone 14 Pro and 14 Pro Max began on September 9, 2022, and were made available on September 16, 2022.
                        </p>
                        <p>
                            The iPhone 14 Pro and iPhone 14 Pro Max are the first iPhones to have a new type of display cutout called "Dynamic Island", replacing the notch design that has been in use since the iPhone X was introduced.
                        </p>
                        <p>
                            Along with the iPhone 14, iPhone 14 Pro models add bidirectional satellite connectivity to contact emergency services when out of range of Wi-Fi and cellular networks.
                        </p>
                        <p> 
                            iPhone 14 Pro and iPhone 14 Pro Max models (as well as the iPhone 14 and 14 Plus) sold in the United States dropped support for physical SIM cards, making them the first iPhone models since the CDMA variant of the iPhone 4 to lack a discrete SIM card reader.
                        </p>
                    </div>
                </div>
                <div class="product_review">

                    <div style="box-shadow: none;  margin: 0;" class="product_review_1">
                        <div style="box-shadow: none;" class="product_review_title">
                            <h4>Customer reviews & ratings</h4>
                        </div>
                        <div  class="product_review_point">
                            <p>
                                <span>5.0</span>
                                <span>/</span>                         
                                <span>5.0</span> 
                            </p>
                        </div>
                        <div style="display: flex;" class="product_review_result">       
                            <div style="box-shadow: none;" class="product_review_result_info">            
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                            </div>
                            <div style="box-shadow: none;" class="product_review_result_info">
                                <p>(5.0)</p>
                            </div>
                            <div style="box-shadow: none;" class="product_review_result_info">
                                <p>16 reviews</p>
                            </div>                                    
                        </div>
                    </div>
                    <div class="product_review_2">
                        <div class="progress-block">
                            <div style="margin: 0 0 -.5rem -.6rem;" class="progress-block__line">
                                <span class="text">5</span>
                                <span class="fa fa-star checked"></span>
                                <div class="progress progress-success progress-sm progress-line">
                                    <div class="progress-bar" style="width: 100%;"></div>
                                </div>
                                <span class="text m-l-4">16</span>
                            </div>
                            <div class="progress-block__line">
                                <span class="text">4</span>
                                <span class="fa fa-star checked"></span>
                                <div class="progress progress-success progress-sm progress-line">
                                    <div class="progress-bar" style="width: 0;"></div>
                                </div>
                                <span class="text m-l-4">0</span>
                            </div>
                            <div class="progress-block__line">
                                <span class="text">3</span>
                                <span class="fa fa-star checked"></span>
                                <div class="progress progress-success progress-sm progress-line">
                                    <div class="progress-bar" style="width: 0;"></div>
                                </div>
                                <span class="text m-l-4">0</span>
                            </div>
                            <div class="progress-block__line">
                                <span class="text">2</span>
                                <span class="fa fa-star checked"></span>
                                <div class="progress progress-success progress-sm progress-line">
                                    <div class="progress-bar" style="width: 0%;"></div>
                                </div>
                                <span class="text m-l-4">0</span>
                            </div>
                            <div class="progress-block__line">
                                <span class="text">1</span>
                                <span class="fa fa-star checked"></span>
                                <div class="progress progress-success progress-sm progress-line">
                                    <div class="progress-bar" style="width: 0%;"></div>
                                </div>
                                <span class="text m-l-4">0</span>
                            </div>
                        </div>
                    </div>

                    <div class="product_review_3">
                        <div style="box-shadow: none; margin-top: 1rem;" class="form-group">
                            <textarea style="width: 100%; height: 20%; resize: none; border-radius: .6rem; margin-left: -2.4rem;" type="Content" class="form-input form-input-md " placeholder="Write out your thought..."></textarea>
                        </div>
                        <div style="margin-left: 1.5%;" class="form-group_button">
                            <button>Sent</button>
                        </div>
                    </div>
                </div>

            </div>
                            
            <!-- Ads -->                
            <div style="box-shadow: none;" class="col-md-3 ads">

                <div style="box-shadow: none; display: flex; flex-direction: column;" class="iphone_list">
                    <div style="box-shadow: none; margin: 0;" class="iphone_list__item___title">
                        <h4 style="padding-left: 1.6rem;">Related products</h4>
                    </div>
                    <div style="width: 170%;" class="iphone_list__item">
                        <img
                            src="images/2_galaxya04s_1.png"
                            alt=""
                            class="flashSale_item-image"
                            />
                        <div class="iphone_list_item-content">
                            <h4>iPhone 13 Pro Max</h4>
                            <div class="iphone_list_item-content--body">
                                <p>
                                    <del>1700$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-20%</span>
                                </p>
                                <p>
                                    1000$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--nonstart"></i>
                            </div>
                        </div>
                    </div>
                    <div style="width: 170%;" class="iphone_list__item">         
                        <img src="images/4_samsunggalaxys23_1.png" alt="" class="flashSale_item-image">
                        <div class="iphone_list_item-content">
                            <h4>iPhone 11 Pro</h4>          
                            <div class="iphone_list_item-content--body">
                                <p><del>1700$</del> <span style="color: rgba(0, 0, 0, 0.619);">-20%</span></p>
                                <p>900$ <span id="flashSale_item-content--menthod">free ship</span></p>
                                <i class='bx bxs-star' id='flashSale_item-content--start'></i>
                                <i class='bx bxs-star' id='flashSale_item-content--start'></i>
                                <i class='bx bxs-star' id='flashSale_item-content--start'></i>
                                <i class='bx bxs-star' id='flashSale_item-content--nonstart'></i>
                                <i class='bx bxs-star' id='flashSale_item-content--nonstart'></i>        
                            </div>      
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <div style="margin-top: 5rem;" class="footer">
            <div class="footer_content">
                <p>Email : TuanPhonglaptop@gmail.com</p>
                <p>Address: 100 Quang trung,Go vap District, HCMC</p>
                <h5>&copy; Copyright 2021. TuanPhonglaptop.com</h5>
            </div>      
        </div>

        <script src="JS/Jquery.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/ItemInfo.js"></script>
    </body>
</html>
