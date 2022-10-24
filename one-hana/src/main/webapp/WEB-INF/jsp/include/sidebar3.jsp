<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
    <div class="container-fluid sidepanel-inner d-flex flex-column"
      style="width:20%; height:90%; float:left; margin-top:27px; margin-left:40px; margin-right:25px;">
      <div style="padding-left:20px;">
         <h3 style="margin-bottom:10px;">
            <strong style="color:#008485;"> M</strong>y <strong style="color:#008485;"> O</strong>ne 
            <strong style="color:#008485;"> HANA </strong>   
         </h3>
         <hr style="width:200px; height:7px; background-color:#066262;">
         
         
         
       <div>
            <a href="${pageContext.request.contextPath}/mybankMain"
               style="color:#808080; font-size:18px;">나의 주머니</a>
         </div>     
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/checkBudgetMain"
               style="color:#808080; font-size:18px;">나의 예산</a>
         </div>
         <hr style="width: 200px;">
         
         <div>
            <a href="${pageContext.request.contextPath }/myParkingMain"
               style="color:#808080; font-size:18px;">나의 파킹</a>
         </div>
         <hr style="width: 200px;">
         <div>
            <a href="${pageContext.request.contextPath}/consumeMain"
               style="color:#808080; font-size:18px;">나의 달력</a>
         </div>
         <hr style="width: 200px;">  
         <div>
            <a href="${pageContext.request.contextPath }/consumePattern"
               style="color:#808080; font-size:18px;">나의 소비</a>
         </div>
         <hr style="width: 200px;">
         <%--  <div>
            <a href="${pageContext.request.contextPath }/"
               style="color:#808080; font-size:18px;"></a>
         </div>
         <hr style="width:200px;"> --%>
         
         
      </div>
   </div>