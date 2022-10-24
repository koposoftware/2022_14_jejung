<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <meta charset="utf-8" />
        <title>Sales Dashboard | Dashonic - Free Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Free Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/resources/assets/images/favicon.ico">

        <!-- plugin css -->
        <link href="/resources/assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

<style>
@font-face{
    src : url("/resources/font/HanaB.ttf");
    font-family:"hanaBFont";
}

body {
    font-family: hanaBFont !important;
    fontWeight: bold;
}

.menu-item{
    font-size: 17px;
    font-family: hanaBFont; 
}

.navbar-header {
    /* background-color:#008485; */
}

label {
    font-size: 22px;
}

select {
    width:350px;
    height: 42px;
}

option {
    font-size: 18px;
}
</style>
    
</head>
<body>

    <!-- <body data-layout="horizontal"> -->
<!-- navbar-header -->
    <!-- Begin page -->
    <div id="layout-wrapper">

    

          <jsp:include page="/WEB-INF/jsp/include/adminSidebar.jsp"></jsp:include>
          
   
        

<!-- ======================================================================================================================================================== -->
<!-- Start Content here -->
<!-- ======================================================================================================================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
                                 <h4 class="mb-0" style="font-size:25px; font-family:hanaBFont;">&nbsp;<strong style="font-size:26px; color:#008485;">My One HANA</strong> &nbsp;신규상품 추가</h4>

                               
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                   

   <form action="${pageContext.request.contextPath}/insertPro" method="post">               

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                   
                                    <div class="d-flex justify-content-between">
                                        <!-- <h3 class="card-title mb-4">신규 상품 추가</h3> -->
  
                                    </div>

                                    <div class="table-responsive">                                   
                                        <!-- 테이블있던자리 -->
                                       
                                       
                                      <div class="d-flex justify-content-start"> 
	                                      <div style="margin-bottom:20px; margin-right:20px;">
	                                        <label>상품 종류</label><br>
	                                        <select name="type" id="type" class="form-control" style="color:#008485; font-size:18px; width:347px; height:42px">
	                                                    <option value="적금">적금 상품</option>
	                                                    <option value="예금">예금 상품</option>
	                                        </select>  
	                                      </div>
	                                            
	                                            
	                                      <div style="margin-bottom:20px;">
	                                         <label>상품명</label><br>    
	                                         <input type="text" class="form-control" name="savingsName" id="savingsName" style="width:630px; height:42px; color:#008485; font-size:20px;" />
	                                      </div>
                                      </div>
                                      
                                      
                                      <div style="margin-bottom:20px;">
                                         <label>가입 대상</label><br>    
                                         <input type="text" name="target" id="target" class="form-control" style="color:#008485; font-size:20px; width:1000px; height:42px"  />
                                      </div>
                                      
                                       
                                      <div style="margin-bottom:20px;">
                                         <label>상품 설명</label><br>  
                                         <input type="text" name="productDesc" id="productDesc" class="form-control" style="color:#008485; font-size:20px; width:1000px; height:42px" />
                                      </div>
                                      
                                      
                
                                      <div class="d-flex justify-content-start"> 
	                                      <div style="margin-bottom:20px; margin-right:20px;">
	                                         <label>이자 지급 방식</label><br>    
	                                         <select name="savingsType" id="savingsType" class="form-control" style="color:#008485; font-size:18px; width:490px; height:42px">
	                                                 <option value="단리">단리 상품</option>
	                                                 <option value="복리">복리 상품</option>                                    
	                                         </select>
	                                      </div>
	                                      
	                                      
	                                      <div style="margin-bottom:20px;">
	                                         <label>적립 방법</label><br>  
	                                         <select name="accumulateMethod" id="accumulateMethod" class="form-control" style="color:#008485; font-size:18px; width:490px; height:42px">
	                                                     <option value="정액적립식">정액적립식</option>
	                                                     <option value="자유적립식">자유적립식</option>                                          
	                                          </select>
	                                      </div>
                                      </div>
                                      

                                      <div class="d-flex justify-content-start"> 
	                                      <div style="margin-bottom:20px;">
	                                         <label>적립 한도 금액</label><br>     
	                                         <input type="text" name="maxLimit" id="maxLimit" class="form-control" style="text-align:right; color:#008485; font-size:20px; width:200px; height:42px; display:inline;"/>
	                                           <strong style="font-size:20px;">&nbsp;원</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                      </div>
	                                      
	                                      
	                                      <div style="margin-bottom:20px;">
	                                         <label>계약 기간</label><br>  
	                                         <input type="text" name="minPeriod" id="minPeriod" class="form-control" style="text-align:right; color:#008485; font-size:20px; width:100px; height:42px; display:inline;"/> 
	                                           <strong style="font-size:20px;">&nbsp;개월 ~ </strong>
	                                         <input type="text" name="maxPeriod" id="maxPeriod" class="form-control" style="text-align:right; color:#008485; font-size:20px; width:100px; height:42px; display:inline;"/> 
	                                           <strong style="font-size:20px;">&nbsp;개월 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                      </div>
	                                      
	                                      <div style="margin-bottom:20px;">
	                                         <label>가입 금액</label><br>  
	                                         <input type="text" name="minAmount" id="minAmount" class="form-control" style="text-align:right; color:#008485; font-size:20px; width:100px; height:42px; display:inline;" /> 
	                                         <strong style="font-size:20px;">&nbsp;원 ~ </strong>
	                                         <input type="text" name="maxAmount" id="maxAmount" class="form-control" style="text-align:right; color:#008485; font-size:20px; width:100px; height:42px; display:inline;"/>
	                                         <strong style="font-size:20px;">&nbsp;원 </strong>
	                                      </div>
	                                      
                                      </div>
                                  <!--     
                                      <div style="margin-bottom:20px;">
                                         <label>가입 금액</label><br>  
                                         <input type="text" name="minAmount" id="minAmount"  style="width:100px;" /> 원 ~ <input type="text" name="maxAmount"  style="width:100px;" id="maxAmount" /> 원
                                      </div> -->
                                      
                                      
                                      <div class="d-flex justify-content-start"> 
	                                      <div style="margin-bottom:20px;">
	                                         <label>기본 금리</label><br>  
	                                         <input type="text" name="rate" id="rate" class="form-control" style="text-align:right; color:#008485; font-size:18px; width:460px; height:42px; display:inline;" />
	                                         <strong style="font-size:20px;">% </strong>
	                                      </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                      
	                                      <div style="margin-bottom:20px;">
	                                         <label>우대 금리</label><br>  
	                                         <input type="text" name="prefer" id="prefer" class="form-control" style="text-align:right; color:#008485; font-size:18px; width:460px; height:42px; display:inline;" />
	                                         <strong style="font-size:20px;">% </strong>
	                                       </div>
                                     </div>
                                      
                                      
                                      <div style="margin-bottom:20px;">
                                             <label>우대 금리 항목</label><br>
                                             <div class="d-flex justify-content-start">   
                                             <select name="preferType" id="preferType" class="form-control" style="color:#008485; font-size:18px; width:490px; height:42px;">
                                                         <option value="카드실적" selected="selected">카드실적</option>
                                                         <option value="아파트관리비 실적">아파트관리비 실적</option>
                                                         <option value="주택청약종합저축">주택청약종합저축</option>
                                                         <option value="첫거래">첫거래</option>
                                                         <option value="연금이체">연금이체</option>
                                                         <option value="급여이체" selected="selected">급여이체</option>
                                                         <option value="온라인 신규">온라인 신규</option>
                                                         <option value="하나머니">하나머니</option>
                                                         <option value="기타">기타</option>                                              
                                              </select>&nbsp;&nbsp;&nbsp;&nbsp;
                                              
                                              <select name="preferType" id="preferType" class="form-control" style="color:#008485; font-size:18px; width:490px; height:42px">
                                                         <option value="하나머니" selected="selected">하나머니</option>
                                                         <option value="카드실적">카드실적</option>
                                                         <option value="아파트관리비 실적">아파트관리비 실적</option>
                                                         <option value="주택청약종합저축">주택청약종합저축</option>
                                                         <option value="첫거래">첫거래</option>
                                                         <option value="연금이체">연금이체</option>
                                                         <option value="급여이체">급여이체</option>
                                                         <option value="온라인 신규">온라인 신규</option>
                                                         <option value="기타">기타</option>                                              
                                              </select>
                                              </div>
                                          </div>
                                      </div>
                                      
                                      
                                       
                                       
                                      
                                      
                                     
                                      
                                      <!-- 코드 -->
                                        
                                    </div>
                                    
                                    
                                     <input type="submit" id="gogo" value="추가하기"
                                            style="font-size:20px; width:400px; height:42px; border-radius:5px; margin-left:300px; background-color:#008485; color:white; border:none;"> <%-- post버튼 --%>
                  
                                </div>
                            </div>
                        </div>
                    </div>
     </form>
                    <!-- end row -->

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

           
           
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    <!-- Right Sidebar -->
    <div class="right-bar">
        <div data-simplebar class="h-100">
            <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                <a href="javascript:void(0);" class="right-bar-toggle-close ms-auto">
                    <i class="mdi mdi-close noti-icon"></i>
                </a>
            </div>

            <!-- Settings -->
            <hr class="m-0" />

            <div class="rightbar-content p-4">
                <div class="bg-overlay p-4 d-flex align-items-center h-100 text-center">
                    <div>
                        <h5 class="text-uppercase font-size-14 lh-base">This Demos Available Only for Premium Version</h5>
                        <div class="mt-4">
                            <a href="#" target="_blank" class="btn btn-primary w-100"><i class="uil uil-shopping-cart me-1"></i> Purchase Now</a>
                        </div>
                    </div>
                </div>
                <h6 class="mb-3">Layout</h6>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-vertical" value="vertical">
                    <label class="form-check-label" for="layout-vertical">Vertical</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-horizontal" value="horizontal">
                    <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Mode</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-light" value="light" checked>
                    <label class="form-check-label" for="layout-mode-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-dark" value="dark">
                    <label class="form-check-label" for="layout-mode-dark">Dark</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Width</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-fluid" value="fluid" onchange="document.body.setAttribute('data-layout-size', 'fluid')" checked>
                    <label class="form-check-label" for="layout-width-fluid">Fluid</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                    <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Position</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')" checked>
                    <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                    <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                </div>

                <h6 class="mt-4 mb-3">Topbar Color</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')" checked>
                    <label class="form-check-label" for="topbar-color-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                    <label class="form-check-label" for="topbar-color-dark">Dark</label>
                </div>

                <div id="sidebar-setting">
                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')" checked>
                    <label class="form-check-label" for="sidebar-size-default">Default</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                    <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                    <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                </div>

                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')" checked>
                    <label class="form-check-label" for="sidebar-color-light">Light</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                    <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                    <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                </div>
            </div>

                <h6 class="mt-4 mb-3">Direction</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-ltr" value="ltr" checked>
                    <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-rtl" value="rtl">
                    <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                </div>

            </div>

        </div> <!-- end slimscroll-menu-->
    </div>
    <!-- /Right-bar -->

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    <script src="/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="/resources/assets/libs/feather-icons/feather.min.js"></script>

    <!-- apexcharts -->
    <script src="/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

    <script src="/resources/assets/js/pages/dashboard-sales.init.js"></script>

    <script src="/resources/assets/js/app.js"></script>



</body>
</html>

</body>
</html>