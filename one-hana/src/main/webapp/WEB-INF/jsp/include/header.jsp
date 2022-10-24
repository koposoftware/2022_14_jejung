<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <link href="img/favicon.ico" rel="icon"> -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">



    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet"> 
 
    <link href="/resources/mycss/test.css" rel="stylesheet">

 
    <!-- font important -->
    <link href="/resources/mycss/test.css" rel="stylesheet">
 

<style>
ul {
	list-style-type: none;
}

ul li {
	display: inline; 
	padding: 0px 10px 0px 10px; 
	font-size: 20px;
}

.nav-item {
    padding: 0px !important;
}

.dropdown-item{
    font-size: 18px;
    /* color:#008485; */
}

.dropdown-toggle {
    color:#333333 !important;
}

</style>

  <!-- Topbar Start -->
    <div class="container-fluid px-5 d-none d-lg-block">
        <div class="row gx-5 py-3 align-items-center">
            <div class="col-lg-3">
                <div class="d-flex align-items-center justify-content-start main-logo">
                	<a href="${pageContext.request.contextPath}/">
                    	<img src="${pageContext.request.contextPath}/resources/myicon/mylogo1.png"
                    	     style="width:60%;"/> 
                    	     <%-- <img src="${pageContext.request.contextPath}/resources/img/My_logo.png"
                             style="width:250px; height:80px;"/> --%>
                    	
                	</a>
                	 <!-- <h2 style="color:#008485; display:inline;">M</h2>
                         <h2 style="display:inline;">y&nbsp;</h2>
                         <h2 style="color:#008485; display:inline;">O</h2>
                         <h2 style="display:inline;">ne&nbsp;</h2>
                         <h2 style="color:#008485; display:inline;"> HANA</h2> --> 
                </div>
            </div>
            <div class="col-lg-6">
            <div class="d-flex justify-content-center">
					<ul>
						<li><a href="${pageContext.request.contextPath}/">HOME &nbsp;</a></li>
						<%-- <li><a href="${pageContext.request.contextPath}/joinMybank"> 통장개설</a></li>
						 <li><a href="${pageContext.request.contextPath}/mybankMain"> 마이원하나 </a></li>  --%>
						<%--<li><a href="${pageContext.request.contextPath}/setBudgetMain"> 한달예산관리 </a></li> --%>
		                <%-- <li><a href="${pageContext.request.contextPath}/mailform"> 메뉴 4 </a></li> --%>


                    <li class="nav-item dropdown" style="display:inline-block;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        MyOne</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:3px solid; border-color:#008485;">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/whatis">마이원하나란?</a></li>
                            <%-- <li><a class="dropdown-item" href="${pageContext.request.contextPath}/joinMybank">통장개설</a></li> --%>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/mybankMain">MOHANA주머니</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/setBudgetMain">나의예산설정</a></li>
                        </ul>
                    </li>
                    
                    
                    <li class="nav-item dropdown" style="display:inline-block;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        My자산</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:3px solid; border-color:#008485;">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/checkBudgetMain">나의예산현황</a></li>                            
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/myParkingMain">나의파킹현황</a></li>
                        </ul>
                    </li>
                    
                    
                    <li class="nav-item dropdown" style="display: inline-block;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        My소비</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:3px solid; border-color:#008485;">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumeMain">소비달력</a></li>                            
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumePattern">요약소비패턴</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumePattern">세부소비패턴</a></li>
                        </ul>
                    </li>
                    
                <%--     <li class="nav-item dropdown" style="display: inline-block;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        MyPage</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/checkBudgetMain">소비달력</a></li>                            
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/myParkingMain">요약소비패턴</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/myParkingMain">세부소비패턴</a></li>
                        </ul>
                    </li> --%>


<%-- 
					<li class="nav-item dropdown" style="display: inline-block;">
					   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">My소비</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumeMain">소비달력</a></li>
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumeMain">요약소비패턴</a></li>
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/consumeMain">세부소비패턴</a></li>
						</ul>
					</li>
 --%>
 
 
                    <%-- <li><a href="${pageContext.request.contextPath}/"> MyPage </a></li> --%>



				</ul>
			</div>
            </div>

            
			<div class="col-lg-3 d-flex justify-content-end">
				<c:choose>
	          			<c:when test="${ not empty loginVO }">	
	 		 				<c:if test="${ loginVO.type eq 'U' }">      	 	
								<div style="margin-top:10px; margin-right:30px; color: #008485; font-size: 20px;"> ${ loginVO.name } 님 </div>
							</c:if>
							<c:if test="${ loginVO.type eq 'S' }">
								<div style="margin-top:10px; margin-right:30px; color: #008485; font-size: 20px;"> ${ loginVO.name } 관리자님 </div>
							</c:if>
	 		 										
							<div style="border:solid;  border-color:#008485; background-color:#008485; border-radius:10px;  width:110px;  height:50px;"> 
								<a href="${pageContext.request.contextPath}/logout" style="color:white; height: 43px; font-size: 18px; text-align:center;" class="d-flex justify-content-center align-items-center">로그아웃</a>	
							</div>
		           		</c:when>
					
				        <c:otherwise>
				        	<div style="border:solid;  border-color:#008485; background-color:#008485; border-radius:10px;  width:110px;  height:50px; margin-right:10px;"> 
				            	<a href="${pageContext.request.contextPath}/login" style="color:white; height: 43px; font-size: 18px; text-align:center;" class="d-flex justify-content-center align-items-center">로그인</a>
				            </div>
				            	
				            <div style="border:solid; border-color:#008485; background-color:white; border-radius:10px;  width:110px;  height:50px;"> 	            	
					           	<a href="${pageContext.request.contextPath}/" style="color:#008485; height: 43px; font-size: 18px; text-align:center;" class="d-flex justify-content-center align-items-center">회원가입</a>  	
					        </div>
						</c:otherwise>			
					</c:choose>
             </div>
             <hr style="background-color: #008485;  height: 2px;">
          </div>
      </div>

  <!-- Topbar End -->



    <!-- Navbar Start -->
 <%--    <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
        <a href="index.html" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Farm</span>Fresh</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
                <a href="${pageContext.request.contextPath}/" class="nav-item nav-link" style="color:write;">Home</a>
                <a href="${pageContext.request.contextPath}/joinMybank" class="nav-item nav-link">통장가입</a>
                <a href="service.html" class="nav-item nav-link">구현2</a>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">드롭다운</a>
                    <div class="dropdown-menu m-0">
                        <a href="${pageContext.request.contextPath}/joinMybank" class="dropdown-item">통장가입</a>
                        <a href="detail.html" class="dropdown-item">Blog Detail</a>
                        <a href="feature.html" class="dropdown-item">Features</a>
                        <a href="team.html" class="dropdown-item">The Team</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                    </div>
                </div>
                <a href="product.html" class="nav-item nav-link">게시판</a>
                <a href="${ pageContext.request.contextPath }/login" class="nav-item nav-link">로그인</a>
            </div>
        </div>
    </nav> --%>
    <!-- Navbar End -->

