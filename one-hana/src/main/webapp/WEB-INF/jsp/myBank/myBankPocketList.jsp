<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.doDivide:hover {
background:none !important;
color:black !important;
border:none !important;
} 

.doDivide:focus {
background:none !important;
color:black !important;
border:none !important;
} 
</style>

    <%-- 각각의 pocket --%>
	<div class="search-box" id="search-box">
		<c:if test="${ not empty pocketList }">
			<c:forEach var="pocket" items="${ pocketList }">
				
				
				<div class= "row" style="margin-bottom:20px; border:3px solid; padding:15px; width:788px; height:135px; border-radius:25px; 
			
				    
				    <c:choose>
                        <c:when test="${ pocket.pocketName eq '기본'}">background-color: #fff380; border:4px solid; border-color:#ffe600;</c:when> 
                        <c:when test="${ pocket.pocketName eq '고정비'}">background-color: #ffc994; border:4px solid; border-color:#ffb266;</c:when>
                        <c:when test="${ pocket.pocketName eq '생활비'}">background-color: #b7d699; border:4px solid; border-color:#5ea31a;</c:when>
                        <c:when test="${ pocket.pocketName eq '파킹'}">background-color: #b3c2d1; border:4px solid; border-color:#4d7094;</c:when>
                        <c:otherwise>background-color: #e7b4ff; border:4px solid; border-color:#d378ff;</c:otherwise>
                    </c:choose>
                    
			
				">
					
					
					
					
					
					<div class="col-10">
						<h4 class="fromPocket1" style="font-size:27px; display:inline; padding-left:7px; margin-top:15px;">${ pocket.pocketName } </h4>
					    <h4 style="display:inline; font-size:22px; margin-top:15px; font-weight:bold;"> 주머니 </h4><br>
						<small style="font-size:18px; padding-left:7px; font-weight:bold;">${ pocket.pocketDtl }</small><br>
						<h4 style="text-align:right; margin-right:25px; margin-top:17px;"><fmt:formatNumber value="${ pocket.balance }" pattern="#,###"/> 원</h4>
			        </div>
					
					<%-- 각각의 pocket에서의 잔액이동 버튼 --%>
					<button type="button" class="doDivide col-2 btn" data-bs-toggle="modal" data-bs-target="#divideGo"
					        style="font-family:hanaBFont; border-radius:22px; ">
	                    
	                        <img src="${ pageContext.request.contextPath }/resources/myicon/ganada.png" style="width:70px; height:70px;"/>

	                    
	                    
	                        <div><b style="font-size:20px;">잔액이동</b></div>
	                </button>
				</div>
				
				
			</c:forEach>
		</c:if>
	</div>
    


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $('.doDivide').on('click',function(){

    	$('#toPocket').empty();
    	   	
    	var fromPocket = $(this).prev().children('.fromPocket1').text()
    	console.log(fromPocket)
    	$('#fromPocket').text(fromPocket + ' 주머니　➜　' )
    	
    	console.log('${pocketList[0].pocketName}')
    	console.log(typeof('${fn:length(pocketList)}'))
    	var len = '${fn:length(pocketList)}'*1
    	console.log(typeof(len))
        console.log(fromPocket)    	
    	
    	
    	<c:forEach items="${pocketList}" var="pocket"> 
    	console.log('${pocket}')
        console.log('${pocket.pocketName}')
        
    	   if(fromPocket != '${pocket.pocketName}'){
    		   $('#toPocket').append('<option value="${pocket.pocketName}"> ${pocket.pocketName} 주머니 </option>');
    	   }
    	</c:forEach> 
    })    
</script>
