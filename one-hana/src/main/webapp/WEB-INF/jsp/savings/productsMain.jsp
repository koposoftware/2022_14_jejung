<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
<!-- <link href="/resources/mycss/chart.css" rel="stylesheet"> -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<style>
.nav-tabs {
    border-bottom: 3px solid #008485;
    width: 1060px;
}
</style>

</head>
<body>

 <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
    
    <!-- side bar start -->
    <div class="container-fluid sidepanel-inner d-flex flex-column"
      style="width:20%; float:left; margin-top:37px; margin-left:10px; margin-right:10px;">
      <div style="padding-left: 30px;">
         <h3 style="margin-bottom: 10px;">
            <!-- <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>    -->
            <strong style="color:#008485;">상품 추천</strong>
            
         </h3>
         <hr style="width: 200px; height: 5px; background-color:#066262;">
         <div>
            <a href="${pageContext.request.contextPath}/savingsMain"
               style="color:#808080;">예적금</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">입출금</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">펀드</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">대출</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/"
               style="color:#808080;">외화</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080;">퇴직연금</a>
         </div>
         <hr style="width: 200px;">
          
      </div>
   </div>
   <!-- side bar end -->
   
   
   
                
                <button><a href="${pageContext.request.contextPath}/savingsMain">적금 상품 전체 보기</a></button>
   
   
   
   
   
   
   
   
   
</body>
</html>