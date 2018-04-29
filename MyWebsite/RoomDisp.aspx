<%@ Page Title="" Language="C#" MasterPageFile="~/MasterA.Master" AutoEventWireup="true" CodeBehind="RoomDisp.aspx.cs" Inherits="MyWebsite.RoomDisp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="MyStyle/vendor/bootstrap/css/bootstrap.min.css" type="text/css" media="all"/>
	<link rel="stylesheet" href="MyStyle/vendor/bootstrap/css/bootstrap-select.css"/>

	<!--<link rel="stylesheet" href="css/template.css" type="text/css" media="all">-->
	<link rel="stylesheet" type="text/css" href="MyStyle/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="MyStyle/css/search.css"/> 
	<link rel="stylesheet" href="MyStyle/css/custom.css"/> 
   	<!-- Custom styles for this template -->
    <link href="MyStyle/css/template.css" rel="stylesheet"/>

    <!-- jQuery Popup Css -->
  	<link rel="stylesheet" href="MyStyle/vendor/remodal/css/remodal.css"/>
  	<link rel="stylesheet" href="MyStyle/vendor/remodal/css/remodal-default-theme.css"/>
    
    <!-- Ion Range Slider CSS -->
    <link rel="stylesheet" href="MyStyle/vendor/ion.rangeslider/ion.rangeSlider.css" />
    <link rel="stylesheet" href="MyStyle/vendor/ion.rangeslider/ion.rangeSlider.skinFlat.css" />
     
	
	<script src="MyStyle/js/modernizr.js"></script> <!-- Modernizr -->
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="cd-gallery col-lg-10 p-4 filter-is-visible serach-result-box">

        <div class="search-wrapper">
            <div class="row w-100 float-left">
                <ul class="w-100">
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room1.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room2.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room3.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room4.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room5.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room6.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>
                    <li class="mix color-1 check1 radio2 option3 col-lg-4 col-md-6 search-card-box">
                        <div class="card-body no-padding">

                            <div class="col-lg-12 card_img-wrap">
                                <a href="#">
                                    <img class="img-fluid" src="Images/room6.jpg" width="100%" alt=""></a>
                                <!--							  <span class="feature-badge btn-red bg-red white rounded">Featured</span>-->

                            </div>
                            <!--/ userAds_img -->
                            <div class="col-lg-12">
                                <div class="card-details-wrap">
                                    <div class="card-detail">
                                        <h4 class="card-title red bold w-75">Fixing Auto Washing Machines</h4>
                                        <div class="card-desc pt-3 pb-3">
                                            <p class="seller-rating">
                                                <span>Rating: </span>
                                                <div class="rating-stars">
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                    <a><i class="fa fa-star"></i></a>
                                                </div>
                                            </p>
                                            <p class="card-text"><span>Commericial Name:</span> ABCD For General Services</p>
                                            <p class="card-text"><span>Service Type:</span> Furniture installation works</p>
                                            <p class="card-text"><span>Service Summary:</span> Fixing Auto Washing Machine</p>
                                            <p class="card-text"><span>Price:</span> N/A</p>
                                            <p class="card-text"><span>Special Offer:</span> $ 1 299.00</p>
                                        </div>
                                        <div class="dilb w-100">

                                            <span class="text-left pull-left text-muted bold">Abu Dhabi</span>
                                            <span class="text-right pull-right text-muted bold">1 day ago</span>
                                        </div>
                                        <div class="card-buttons pull-left">
                                            <a href="#">Request Quotation</a>
                                            <a href="#">Request Direct</a>
                                        </div>

                                        <div class="card-icons"><i class="fa fa-heart"></i></div>
                                    </div>
                                    <!--/ col-lg-8 -->
                                </div>
                                <!--/ db_Ad_details -->
                            </div>

                        </div>
                        <!--/ Card-Body end -->
                    </li>



                    <div class="cd-fail-message">No results found</div>
                </ul>
            </div>


            <!-- Pagination -->
            <ul class="pagination justify-content-center mt-4 mb-5 w-100">
                <li class="page-item">
                    <a class="page-link active" href="#"><i class="fa fa-angle-left"></i></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">5</a>
                </li>
                <li class="page-item">
                    <a class="page-link active" href="#"><i class="fa fa-angle-right"></i></a>
                </li>
            </ul>

        </div>
        <!-- Search Wrapper End -->




    </section>
    <!-- cd-gallery -->

  <script src="MyStyle/vendor/jquery/jquery.min.js"></script>
    <script src="MyStyle/assets/plugins/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="MyStyle/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="MyStyle/vendor/bootstrap/js/bootstrap-select.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="MyStyle/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom JavaScript for this theme -->
    <script src="MyStyle/js/scrolling-nav.js"></script>
    <!-- jQuery Dialog -->
  	<script src="MyStyle/vendor/remodal/js/remodal.js"></script>
  	<script src="MyStyle/js/custom.js"></script>
	<script src="MyStyle/js/jquery.mixitup.min.js"></script>
	<script src="MyStyle/js/category.js"></script> <!-- Resource jQuery -->
	
	<script type="text/javascript" src="MyStyle/js/geo_Address.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPoNNK3aJZDgTbCPFC_WeSwc2vsXFSFUg&libraries=places&callback=initAutocomplete"
        async defer></script>
	
	<!-- Ion Range Slider JS -->
  	<script src="MyStyle/vendor/ion.rangeslider/ion.rangeSlider.js"></script>
  

</asp:Content>
