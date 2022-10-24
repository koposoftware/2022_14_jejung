<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@font-face{
    src : url("/resources/font/HanaB.ttf");
    font-family:"hanaBFont";
}

.menu-item {
    font-size:19px;
}
</style>
</head>
<body>
    
    
        
        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        <a href="index.html" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-dark.png" alt="" height="22">
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-light.png" alt="" height="22">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>

                </div>

                <div class="d-flex">

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-sm" data-feather="bell"></i>
                            <span class="noti-dot bg-danger"></span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                            aria-labelledby="page-header-notifications-dropdown">
                            <div class="p-3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h5 class="m-0 font-size-15"> Notifications </h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#!" class="small"> Mark all as read</a>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <h6 class="dropdown-header bg-light">New</h6>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <img src="assets/images/users/avatar-3.jpg"
                                            class="me-3 rounded-circle avatar-sm" alt="user-pic">
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">Justin Verduzco</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Your task changed an issue from "In Progress" to <span class="badge bg-success">Review</span></p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <div class="avatar-sm me-3">
                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                    <i class="uil-shopping-basket"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">New order has been placed</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Open the order confirmation or shipment confirmation.</p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 5 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-2 border-top d-grid">
                                <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                    <i class="uil-arrow-circle-right me-1"></i> <span>View More..</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="dropdown d-inline-block">
                   
                        <button type="button" class="btn header-item noti-icon right-bar-toggle" id="right-bar-toggle">
                            <i class="icon-sm" data-feather="settings"></i>
                        </button>
                    </div>

                    <div class="dropdown d-inline-block">
                    
                    
                        <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           
                           
                           
                           <!--  <img class="rounded-circle header-profile-user" src="assets/images/users/avatar-1.jpg"
                            alt="img"> -->
                       
                        </button>
                        <div class="dropdown-menu dropdown-menu-end pt-0">
                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                            <a class="dropdown-item d-flex align-items-center" href="#"><i class="mdi mdi-cog-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Settings</span><span class="badge bg-success ms-auto">New</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Lock screen</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Logout</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="${pageContext.request.contextPath}" class="logo logo-dark">
                
                
               
                        <img src="${pageContext.request.contextPath}/resources/myicon/mylogo1.png"
                             style="width:65%;"/> 
                           
                
                
                    <!-- <span class="logo-sm">
                        <img src="assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="assets/images/logo-dark.png" alt="" height="22">
                    </span> -->
                </a>

                <a href="index.html" class="logo logo-light">
                    <span class="logo-lg">
                        <img src="assets/images/logo-light.png" alt="" height="22">
                    </span>
                    <span class="logo-sm">
                        <img src="assets/images/logo-sm-light.png" alt="" height="22">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

            <div data-simplebar class="sidebar-menu-scroll">
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

     <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
       
                        <li class="menu-title" style="margin-top:10px; margin-bottom:10px;"><h5 style="font-size:26px; font-family:hanaBFont; display:inline; fontWeight:bold; color:#008485;">정하나</h5><h5 style="font-family:hanaBFont; font-size:19px; color:black; display:inline;"> 관리자님</h5></li>
                        
                        <li>
                            <a href="${pageContext.request.contextPath}/indexAdmin">
                                <i class="icon nav-icon" data-feather="monitor"></i>
                                <span class="menu-item">대시보드</span>
                            </a>
                        </li>

                      
                        <li>
                        <a href="${pageContext.request.contextPath}/productManage">
                                <i class="icon nav-icon" data-feather="edit"></i>
                                <span class="menu-item">상품관리</span>
                        </a>
                        </li>
                        

<!--                    <li>
                            <a href="pages-starter.html">
                                <i class="icon nav-icon" data-feather="file-text"></i>
                                <span class="menu-item">Starter Page</span>
                            </a>
                        </li>
 -->
                        <li>
                            <a href="pages-maintenance.html">
                                <i class="icon nav-icon" data-feather="user"></i>
                                <span class="menu-item">회원관리</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="auth-resetpassword-basic.html">
                                <i class="icon nav-icon" data-feather="refresh-cw"></i>
                                <span class="menu-item">설정</span>
                            </a>
                        </li>
                        

                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->
        
</body>
</html>