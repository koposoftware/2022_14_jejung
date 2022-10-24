<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
	
	
	<!-- <h3 style="text-align:center;"> 통장 전환이 완료되었습니다 </h3> -->
	   <img src="${pageContext.request.contextPath}/resources/img/My_success.png" 
	        class="animate__animated animate__swing"
            style="width:230px; height:180px; margin-left:370px; margin-top:50px;"/><br>
            
            <!-- animate rubberBand 랑 swing 중 택 1 -->
            
    <h3 style="margin-left:320px; color:#008485; display:inline-block; margin-bottom:20px; margin-top:35px;"> 통장 전환</h3>
    <h3 style="display:inline-block; margin-bottom:20px; margin-top:35px;">이 완료되었습니다 </h3><br>
	<!-- <hr style="width:900px; height:5px; background-color:#066262; margin-bottom:20px;"> -->
	
	<form action="${pageContext.request.contextPath}/mybankMain" method="get">	
	<input type="hidden" name="accountNo" value="${ MyBank.accountNo }">
	
	
			<!-- <div style="background-color:#E0E0E0; width:900px; margin-left:405px; border:2px solid; border-radius:25px;" id="newAccountList">		 -->
		 
		 <div style="width:900px; margin-left:350px;" id="newAccountList">        
         
         <hr style="width:900px; height:5px; background-color:#066262; margin-top:30px; margin-bottom:30px;">
         
                <div class="d-flex justify-content-between">
				<h4>상품명</h4>
				<h4 style="font-size:25px;">${ MyBank.accountName }</h4>
				</div>
				
				<div class="d-flex justify-content-between" style="font-size:30px;">
				<h4>전환일</h4>
                <h4 style="font-size:25px;">${ MyBank.openDate }</h4>
				</div>
				
				<div class="d-flex justify-content-between" style="font-size:30px;">
				<h4>계좌번호</h4>
				<h4 style="font-size:25px;">${ MyBank.accountNo }</h4>
                <%-- <h4 style="margin-right:10px; display:inline;">${ MyBank.accountNo }</h4><br> --%>
                </div>
                
                <div class="d-flex justify-content-between" style="font-size:30px;">
                <h4>잔액</h4>
                <h4 style="font-size:25px;"><fmt:formatNumber value="${ MyBank.balance }" pattern="#,###"/> 원</h4>
                </div>
				
				
				<%-- <h4>전환일 ${ MyBank.openDate }</h4><br>
				<h5>계좌번호 ${ MyBank.accountNo }</h5><br>
				<h5>잔액 ${ MyBank.balance }원</h5><br>  --%>
				
				
				<hr style="width:900px; height:5px; background-color:#066262; margin-top:30px; margin-bottom:30px;">
				<h4 style="margin-bottom:10px;">금융거래 한도계좌 안내</h4>
				<h5 style="margin-bottom:20px;">금융 사고 방지를 위해 '금융거래한도 제한계좌'로 개설됩니다</h5> 
			</div>
	


	<div style="margin-left:595px; color:#008485; display:inline-block; margin-top:30px;">
		<input type="submit" id="gogo" value="My One HANA 통장 확인하러 가기"
		       style="width:420px; height:50px; border-radius:5px; background-color:#008485; color:white; border:none; font-size:20px;"> 
	
	           <!-- font-weight:bold; -->
	
	</div>	
		
		
	</form>
	
	<br><br><br>
	
</body>
</html>