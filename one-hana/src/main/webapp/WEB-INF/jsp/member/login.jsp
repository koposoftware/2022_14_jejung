<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>
    

</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"/>
	</header>   
	
	
<div style="margin-left:auto; margin-right:auto; text-align:center; margin-top:40px; margin-bottom:20px;"> 
    <img src="${pageContext.request.contextPath}/resources/myicon/loginlogo.png" style="width:20%;"/>
    

</div>	
	
<div style="margin-left:auto; margin-right:auto; border:4px solid; border-color:#008485; border-radius:15px; 
     width:500px; height:400px; text-align:center; margin-top:10px;">
	

	
	<form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="memberVO">
						<%-- controller에서 request에 저장해준 memberVO를 modelAtt로 받아옴 --%>
		<table style="margin-left:auto; margin-right:auto;">
			<tr>
				<!-- <th>ID</th> -->
				<td>
					<form:input path="id" placeholder="아이디" class="form-control" style="margin-top:60px; color:#008485; font-size:20px; width:350px; height:55px; border-radius:10px;" />
					<form:errors path="id"></form:errors>
				</td>
			</tr>
		
			<tr>
				<!-- <th>PASSWORD</th> -->
				<td>
					<form:input type="password" path="password" placeholder="비밀번호" class="form-control" style="color:#008485; font-size:20px; width:350px; height:55px; border-radius:10px;" />
					<form:errors path="password"></form:errors>
				</td>
			</tr>
		</table>	
		
		      <div style="font-size:17px; color:gray; text-align:left; padding-left:75px; margin-top:10px; margin-bottom:25px;"><input name="" id="" type="checkbox" value="" style="width:25px;">&nbsp;&nbsp;로그인 상태 유지</div>
			
			<input type="submit" value="로그인" 
			style="color:white; font-size:22px; width:350px; height:50px; border-radius:10px; background-color:#008485; border:none;">
	        
	        <img src="${pageContext.request.contextPath}/resources/myicon/kakao.jpg" style="margin-top:10px; width:350px; height:50px;"/> 
          
	</form:form>	


 

</div>
 
   <div style="text-align:center; color:gray; font-size:20px; margin-top:20px; ">아이디 찾기 &nbsp; | &nbsp; 비밀번호 찾기 &nbsp; | &nbsp; 회원가입</div>
    
   <%--  
   <footer>
    	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
   </footer> 
   --%>
</body>

</html>