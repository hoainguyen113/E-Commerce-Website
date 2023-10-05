<%-- 
    Document   : checkout_2
    Created on : Jul 19, 2023, 9:53:48 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>H2MAK Cart</title>
        <link rel="stylesheet" href="CSS/payment_1.css">
        <link rel="stylesheet" href="CSS/checkout_payment.css">

        <link rel="stylesheet" href="CSS/bootstrap.css">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
        <script type="text/javascript">
            function paymethod() {
                if (confirm("You have pay successfully!")) {
                    window.location = "pay";
                }
            }

        </script>
    </head>

    <body>
        <%@include file="header.jsp" %>  

        <div class="container payment--box">
            <div style="background-color: black; display: flex;" class="text-center  payment--header">
                <!-- <a style="display: flex;" href="/OurShop.html" class="mm back-home--header"> <i style="float: left;" -->
                <!-- class='mm left-arrow bx bx-chevron-left'></i> -->
                <!-- <p style="display: inline-block; font-size: 16px; width: 60px;">Trở lại</p> -->
                <!-- </a> -->
                <p style="color:white;width: 100%;" class="text-center">Payment</p>
            </div>
            <!-- Body -->
            <div style="padding-left: 58px !important;" class=" plr-32 pl-15 payment--address">
                <div style="display: flex;" class="row text-none payment--infor">
                    <div style="" class="col-md-6 payment--infor1">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Họ và tên</p>
                        <input required style="line-height: 32px; width: 100%;padding-left: 8px;"
                               placeholder="Vui lòng nhập họ và tên của bạn" class="" type="text">
                    </div>
                    <div class="col-md-6">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Số điện thoại</p>
                        <div style="width: 100%;" class="go--left flex-reverse  payment--infor1">
                            <input required style="line-height: 32px;width: 100%;padding-left: 8px;"
                                   placeholder="Vui lòng nhập số điện thoại của bạn" class="" type="text">
                        </div>
                    </div>
                </div>
                <div class="row email payment--infor">
                    <div class="email_1 col-md-12">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Email</p>
                        <div style="width: 100%;" class="go--left flex-reverse  payment--infor1">
                            <input required style="line-height: 32px;width: 100%; padding-left: 8px;"
                                   placeholder="Vui lòng nhập email của bạn" class="" type="text">
                        </div>
                    </div>
                </div>
                <div class="row payment--infor payment--home__address">
                    <div class="col-md-12 address_0">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Địa chỉ nhận hàng</p>
                        <div style="width: 100%;" class="go--left flex-reverse  payment--infor1">
                            <input required style="line-height: 32px;width: 100%; padding-left: 8px;"
                                   placeholder="Vui lòng nhập địa chỉ của bạn" class="" type="text">
                        </div>
                    </div>
                    <div class="col-md-6 address_2">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Tỉnh/Thành phố</p>
                        <select style="height: 32px; width: 100%;" name="calc_shipping_provinces" required="">
                            <option value="">Tỉnh / Thành phố</option>
                        </select>
                    </div>
                    <div class="col-md-6 address_1">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: medium; font-weight: bold;">Quận/Huyện</p>
                        <select style="height: 32px; width: 100%;" name="calc_shipping_district" required="">
                            <option value="">Quận / Huyện</option>
                        </select>
                    </div>
                    <input class="billing_address_1" type="hidden"/>
                    <input class="billing_address_2" type="hidden"/>
                </div>
                <div class="payment__method--body">
                    <div class="payment__method--body__item">
                        <div class="payment__method--body__item__header">
                            <div class="payment__method--body__item__header__icon">
                                <img src="picture/visa.png" alt="">
                            </div>
                            <div class="payment__method--body__item__header__title">
                                <p>Visa</p>
                            </div>
                        </div>
                        <div class="payment__method--body__item__body">
                            <div class="payment__method--body__item__body__input required">
                                <input required type="radio" name="payment" id="card--payment1">
                            </div>
                        </div>
                    </div>
                    <div class="payment__method--body__item">
                        <div class="payment__method--body__item__header">
                            <div class="payment__method--body__item__header__icon">
                                <img src="picture/master.png" alt="">
                            </div>
                            <div class="payment__method--body__item__header__title">
                                <p>Mastercard</p>
                            </div>
                        </div>
                        <div class="payment__method--body__item__body">
                            <div class="payment__method--body__item__body__input required">
                                <input required type="radio" name="payment" id="card--payment2">
                            </div>
                        </div>
                    </div>
                    <div class="payment__method--body__item">
                        <div class="payment__method--body__item__header">
                            <div class="payment__method--body__item__header__icon">
                                <img src="picture/momo.png" alt="">
                            </div>
                            <div class="payment__method--body__item__header__title">
                                <p>Momo</p>
                            </div>
                        </div>
                        <div class="payment__method--body__item__body">
                            <div class="payment__method--body__item__body__input required">
                                <input required type="radio" name="payment" id="momo--payment">
                            </div>
                        </div>
                    </div>
                    <div class="payment__method--body__item">
                        <div class="payment__method--body__item__header">
                            <div class="payment__method--body__item__header__icon">
                                <img src="picture/cash.png" alt="">
                            </div>
                            <div class="payment__method--body__item__header__title">
                                <p>Cash</p>
                            </div>
                        </div>
                        <div style="padding-right: 20px;" class="payment__method--body__item__body">
                            <div class="payment__method--body__item__body__input required">
                                <input required type="radio" name="payment" id="cash--payment">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m-8 " id="momo--payment--btn">
                    <div class="pr-15 payment__method--body__item__body__form">
                        <div class="pr-15 payment__method--body__item__body__form__item">
                            <div style="margin: 0; font-size: medium; font-weight: bold;"
                                 class="pd-8 lh-4 payment__method--body__item__body__form__item__header">
                                <p>Nhập số điện thoại của bạn</p>
                            </div>
                            <div class="payment__method--body__item__body__form__item__body">
                                <input required style="width: 100%;" class="pd-8" type="text"
                                       placeholder="Nhập số điện thoại của bạn">
                            </div>
                        </div>
                    </div>
                </div>
                <div style="width:100%;" class="m-8  pr-15" id="card--payment--form">
                    <div style="    " class="row payment__method--body__item__body__form">
                        <div style="padding-right: 30px !important;"
                             class="pr-15 pr-15 col-md-6 payment__method--body__item__body__form__item">
                            <div style="margin: 0; font-size: medium; font-weight: bold;"
                                 class=" pd-8 lh-4 payment__method--body__item__body__form__item__header">
                                <p>Card Number</p>
                            </div>
                            <div class="payment__method--body__item__body__form__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;" required
                                       type="text" placeholder="Card Number">
                            </div>
                        </div>
                        <div style="padding-left: 0; padding-right:  47px !important;"
                             class="pr-15 col-md-6  payment__method--body__item__body__form__item">
                            <div style="margin: 0; font-size: medium; font-weight: bold;"
                                 class="pd-8 lh-4 payment__method--body__item__body__form__item__header">
                                <p>Card Name</p>
                            </div>
                            <div class="payment__method--body__item__body__form__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;" required
                                       type="text" placeholder="Card Name">
                            </div>
                        </div>
                    </div>
                    <div style="" class="row payment__method--body__item__body__form">
                        <div style="padding-right: 30px !important;"
                             class="pr-15 col-md-6  payment__method--body__item__body__form__item">
                            <div style="margin: 0; font-size: medium; font-weight: bold;"
                                 class="pd-8 lh-4 payment__method--body__item__body__form__item__header">
                                <p>Card Expiry</p>
                            </div>
                            <div class="payment__method--body__item__body__form__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;"
                                       type="text" placeholder="Card Expiry">
                            </div>
                        </div>
                        <div style="padding-left: 0; padding-right: 47px !important;"
                             class="pr-15 col-md-6 payment__method--body__item__body__form__item">
                            <div style="margin: 0; font-size: medium; font-weight: bold;"
                                 class="pd-8 lh-4 payment__method--body__item__body__form__item__header">
                                <p>Card CVV</p>
                            </div>
                            <div class="payment__method--body__item__body__form__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;"
                                       type="text" placeholder="Card CVV">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tax__required--btn" class="m-8 ">
                    <input required type="radio" name="tax" id="tax--required">
                    <label for="tax--required">Yêu cầu hóa đơn đỏ</label>
                </div>
                <div class="m-8 pr-15" id="tax--infor">
                    <div class="text-center tax__infor--header">
                        <p class="pd-8 lh-16" style="margin: 0; font-size: large; font-weight: bold;">Thông tin hóa đơn</p>
                    </div>
                    <div style="margin-right: 8px;" class="row tax__infor--body">
                        <div class="pr-15 col-md-6 tax__infor--body__item">
                            <div class="pd-8 lh-4 tax__infor--body__item__header" style="margin: 0; font-size: medium; font-weight: bold;"
                                 >
                                <p class="lh-8">Tên cá nhân/công ty</p>
                            </div>
                            <div class="tax__infor--body__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;" type="text"
                                       placeholder="Nhập tên công ty">
                            </div>
                        </div>
                        <div style="padding-bottom: 8px;" class="pr-15 col-md-6 tax__infor--body__item">
                            <div class="pd-8 lh-4 tax__infor--body__item__header" style="margin: 0; font-size: medium; font-weight: bold;"
                                 >
                                <p>Mã số thuế</p>
                            </div>
                            <div class="tax__infor--body__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;" type="text"
                                       placeholder="Nhập mã số thuế">
                            </div>
                        </div>
                        <div class="col-md-12 tax__infor--body__item">
                            <div class="pd-8 lh-4 tax__infor--body__item__header" style="margin: 0; font-size: medium; font-weight: bold;"
                                 >
                                <p>Địa chỉ công ty</p>
                            </div>
                            <div class="tax__infor--body__item__body">
                                <input required style="line-height: 32px;width: 100%; padding-left: 8px;"
                                       type="text" placeholder="Nhập địa chỉ công ty">
                            </div>
                        </div>
                    </div>
                </div>
                <div style="" class="text-center payment--confirm">
                    <a style="background-color: black;width: 100%; border-radius: 0px 0px 6px 6px;" class="text-center payment--confirm--btn"
                       href="#" onclick="paymethod()">Pay</a>
                </div>

            </div>
        </div>
        <script src="JS/js/checkout_payment.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/bootstrap.js"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
        <script>//<![CDATA[
                       if (address_2 = localStorage.getItem('address_2_saved')) {
                           $('select[name="calc_shipping_district"] option').each(function () {
                               if ($(this).text() == address_2) {
                                   $(this).attr('selected', '')
                               }
                           })
                           $('input required.billing_address_2').attr('value', address_2)
                       }
                       if (district = localStorage.getItem('district')) {
                           $('select[name="calc_shipping_district"]').html(district)
                           $('select[name="calc_shipping_district"]').on('change', function () {
                               var target = $(this).children('option:selected')
                               target.attr('selected', '')
                               $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
                               address_2 = target.text()
                               $('input required.billing_address_2').attr('value', address_2)
                               district = $('select[name="calc_shipping_district"]').html()
                               localStorage.setItem('district', district)
                               localStorage.setItem('address_2_saved', address_2)
                           })
                       }
                       $('select[name="calc_shipping_provinces"]').each(function () {
                           var $this = $(this),
                                   stc = ''
                           c.forEach(function (i, e) {
                               e += +1
                               stc += '<option value=' + e + '>' + i + '</option>'
                               $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
                               if (address_1 = localStorage.getItem('address_1_saved')) {
                                   $('select[name="calc_shipping_provinces"] option').each(function () {
                                       if ($(this).text() == address_1) {
                                           $(this).attr('selected', '')
                                       }
                                   })
                                   $('input required.billing_address_1').attr('value', address_1)
                               }
                               $this.on('change', function (i) {
                                   i = $this.children('option:selected').index() - 1
                                   var str = '',
                                           r = $this.val()
                                   if (r != '') {
                                       arr[i].forEach(function (el) {
                                           str += '<option value="' + el + '">' + el + '</option>'
                                           $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
                                       })
                                       var address_1 = $this.children('option:selected').text()
                                       var district = $('select[name="calc_shipping_district"]').html()
                                       localStorage.setItem('address_1_saved', address_1)
                                       localStorage.setItem('district', district)
                                       $('select[name="calc_shipping_district"]').on('change', function () {
                                           var target = $(this).children('option:selected')
                                           target.attr('selected', '')
                                           $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
                                           var address_2 = target.text()
                                           $('input required.billing_address_2').attr('value', address_2)
                                           district = $('select[name="calc_shipping_district"]').html()
                                           localStorage.setItem('district', district)
                                           localStorage.setItem('address_2_saved', address_2)
                                       })
                                   } else {
                                       $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
                                       district = $('select[name="calc_shipping_district"]').html()
                                       localStorage.setItem('district', district)
                                       localStorage.removeItem('address_1_saved', address_1)
                                   }
                               })
                           })
                       })
                       //]]></script>
        <script>
            document.getElementById('card--payment1').onclick = function () {
                document.getElementById('card--payment--form').style.display = 'inline-block';
                document.getElementById('momo--payment--btn').style.display = 'none';

            }
            document.getElementById('card--payment2').onclick = function () {
                document.getElementById('card--payment--form').style.display = 'inline-block';
                document.getElementById('momo--payment--btn').style.display = 'none';
            }
            document.getElementById('momo--payment').onclick = function () {
                document.getElementById('card--payment--form').style.display = 'none';
                document.getElementById('momo--payment--btn').style.display = 'block';

            }
            document.getElementById('cash--payment').onclick = function () {
                document.getElementById('card--payment--form').style.display = 'none';
                document.getElementById('momo--payment--btn').style.display = 'none';
            }
            document.getElementById('tax__required--btn').onclick = function () {
                document.getElementById('tax--infor').style.display = 'block';
            }
        </script>
    </body>

</html>
