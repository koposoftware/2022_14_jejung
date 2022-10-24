<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>One Hana</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.min.js" integrity="sha512-ShSScKTSdSD7IiMKfgTdqaEY8gOGm5cNfqMr6Wc5BZvMgc1UveS+UqpS0TNUtRD1CZ9KhmbGtzwUN7HJlXxY8Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.8.5/bootstrap-progressbar.js" integrity="sha512-tH+o43f9pBn8Kw1Nbyr+wrAQ/SbmKVMuGy2hoGWm9/xFacsOFIz3OmHeEEorjq/CKD4BxHT86qu7zp1wJKGtVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>             
   
   
<!-- my css  -->

<link href="/resources/mycss/consumeDate.css" rel="stylesheet">
<link href="/resources/mycss/chart.css" rel="stylesheet"> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<script>

</script>
<body>
	<header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 

	<div class="row col-12 d-flex">
	
	    <div class="col-5 d-flex flex-column justify-content-center align-items-center">
	    
            <div class="col-12" style="padding-left:50px; margin-bottom:30px;">
            <h4 style="font-size:43px; font-weight:600;"><span style="color:#008485;">'샐 틈 없는'</span> 자산관리의 시작</h4>
            </div>
            <div class="col-12" style="padding-left:50px;  margin-bottom:-10px;">
            <h4 style="font-size:21px; font-weight:500; color:#888888;">통장 관리부터 소비 분석까지 한번에 해결 가능한<br>My One HANA에 오신 것을 환영합니다</h4>
            </div>
            
            <div class="col-12" style="padding-left:50px;">
                <div class="row">
                    <div class="col-lg-12">
		            <button onclick="location.href='${pageContext.request.contextPath}/joinMybank'" style="background:none; border:none;">
		              <img src="${ pageContext.request.contextPath }/resources/myicon/orange1.png" style="width:300px;"/>
		            <%-- <a href="${pageContext.request.contextPath}/joinMybank"> 이용하기</a> --%>
		            <h4 style="transform: translateY(-300%); font-size:40px; margin-right:50px; color:white;">이용하기</h4>
		                </button>
	                </div>
                </div>
            </div>
        </div>
		<!-- class="btn btn-primary"
                style="border-radius: 15px; width: 300px; height: 100px;"  -->
		
		
		<!-- 메인 그림  -->
		<div class="col-7">
			<img
				src="${ pageContext.request.contextPath }/resources/myicon/main8.gif"
				style="width:90%; margin-left: 80px;"
				alt="Image">
		</div>
	</div>


</body>

</html>