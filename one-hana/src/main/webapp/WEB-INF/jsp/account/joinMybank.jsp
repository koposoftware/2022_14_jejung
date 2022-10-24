<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>


<script>
function accountList(){
	//get방식
    location.href = "${pageContext.request.contextPath}/accountList"
}

function newJoin(){
    //get방식
    location.href = "${pageContext.request.contextPath}/newJoin"
}

</script>


</head>

<body>
	<header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
	<jsp:include page="/WEB-INF/jsp/include/sidebar0.jsp"></jsp:include>



<br>


    <div class="container-fluid" style="margin-bottom: 100px;">
    
        <div class="container">
        
     
    

            <div class="row g-5 justify-content-center">
              <h2 style="text-align:center; font-size:35px; margin-top:50px;">
                    <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
                    <strong style="color:#008485;"> HANA </strong>  통장 가입
              </h2> 
                
<!-- 
               <h2 style="text-align:center; font-size:35px; color:#008485; display:inline;">M</h2>
      <h2 style="text-align:center; font-size:35px;  display:inline-block;">y </h2>
      <h2 style="text-align:center; font-size:35px; color:#008485;  display:inline-block;">O</h2>
      <h2 style="text-align:center; font-size:35px;  display:inline-block;">ne</h2>
      <h2 style="text-align:center; font-size:35px; color:#008485; display:inline;">HANA</h2>
       <h2 style="text-align:center; font-size:35px; display:inline;"> 통장 가입</h2>       
                -->
               
             <%-- 통장전환 --%>   
            <%--  <form action="${pageContext.request.contextPath}/accountList" method="get">  --%>
                    <div onclick="accountList()" style="margin-right:20px; width:400px; height:400px; padding: 10px;  border: solid; border-color: #008485; border-width: 7px; border-radius: 20px;" class="service-item bg-white text-center p-5">
                        <img src="${pageContext.request.contextPath }/resources/img/My_bankchange2.png" width="250"/>
                        <br><span style="font-size:30px;">통장 전환</span><br>
                        <!-- <input type="submit" value="통장 전환">  -->
                        <p style="margin-top:15px;">새로 개설 없이 기존의 계좌를 전환하여 가입</p>
                    </div>
             <%--  </form>   --%>
                
                
  
                
                
            <%-- 통장신규가입 --%> 
            <%-- <form action="${pageContext.request.contextPath}/newJoin" method="get">  --%>   
                  <div onclick="newJoin()" style="width:400px; height:400px; padding: 10px;  border: solid; border-color: #008485; border-width: 7px; border-radius: 20px;" class="service-item bg-white text-center p-5">
                      <img src="${pageContext.request.contextPath }/resources/img/My_bankadd2.png" width="250" style="height:212px;"/>
                      <br><span style="font-size:30px; margin-top:20px;">신규 가입</span><br>
                      <!-- <input type="submit" value="통장 신규 가입">  --> 
                       <p style="margin-top:15px;" class="mb-0">신규 통장을 개설하여 마이원 하나 통장 가입 </p>
                  </div>
           
            <%-- </form>  --%>              
     
            </div>
        </div>
    </div>




    
    <%-- 
     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
     --%>
    
</body>

</html>