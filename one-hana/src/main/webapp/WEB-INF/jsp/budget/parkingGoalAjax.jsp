<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="border-box d-flex justify-content-between" id="autoFromParkingSet" 
    style="margin-left:24.9%; text-align:center; border:4px solid; border-color:#ff4747; border-radius:20px; width:900px;">
    
        <div>
        <img src="${pageContext.request.contextPath}/resources/myicon/parking9.png" 
                     style="margin-top:85px; margin-left:30px; width:80%; display:inline;"/>
    </div>
        
        
        <div>
        
        <h3 style="margin-top:20px; margin-bottom:10px;"><strong style="color:#008485">파킹 주머니</strong> 목표 금액 설정</h3>
        <p>남은 잔액을 모두 끌어모아 새는 돈 없이 종잣돈 만들기가 가능합니다</p>
        
        <br>
        <div class="row" style="margin:0 auto;">
            <!-- <div class="col-4">파킹 주머니 목표금액 : </div> -->
            
            <div style="margin:0 auto; display:inline;">
	            <p style="font-size:18px; margin:0 auto; display:inline;">파킹 주머니 목표 금액은 </p>
	
	            <p style="font-size:25px; margin:0 auto; display:inline; color:#008485;">
	               "<fmt:formatNumber value="${updateData.parkingLimit}" pattern="#,###"/>&nbsp;원"
	            </p> 
	            
	            <p style="font-size:18px; margin:0 auto; display:inline;">
	               입니다
	            </p>
            
            </div>
            
            <div style="margin:0 auto; display:inline;">
	            <p style="font-size:18px; display:inline;">파킹 주머니 이동 날짜는 </p>
	             
	            <p style="font-size:25px; display:inline; color:#008485;">    
	                 "매달 ${incomeMap.incomeDate} 일"
	            </p>
	            
	            <p style="font-size:18px; margin:0 auto; display:inline;">
                   입니다
                </p>
            </div>
                
            <br><br>
            <div>
                
                 
            <div style="margin-left:3px; margin-bottom:20px; margin-top:20px;">
                <img src="${pageContext.request.contextPath}/resources/img/My_!green2.png" 
                     style="width:40px; height:40px; display:inline;"/>
                <p style=" display:inline;">&nbsp;목표 금액이 모일 때까지 파킹 주머니는 입금만 가능, 출금은 불가합니다</p>
            </div>  
         
                <input type="button" id="parkingSetBtn" value="수정"
                       style="background-color:#ff4747; margin-bottom:20px; color:white; border:none; border-radius:10px; width:120px; height:45px;">
            </div>
              </div> 
        </div>  
    </div>