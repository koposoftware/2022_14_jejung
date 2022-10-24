<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



        <h3 style="margin-top:20px;">월 <strong style="color:#008485">급여</strong> 설정</h3>
        <!-- <p style="margin-bottom:30px;">한달 급여를 입력하면 정확한 예산 관리가 가능합니다</p> -->
    
          <span id="inDate" style="font-size:22px; display:inline; color:#008485;">매달 ${updateList.incomeDate} 일</span>
          <div style="font-size:22px; display:inline;">에 급여 "</div>
          
          <div id="updateIncome" style="display:inline; font-size:24px; display:inline; color:#008485; font-weight:bold;">
          <fmt:formatNumber value="${updateList.income}" pattern="#,###"/>
          </div> 
          
          <div style="font-size:22px; display:inline;">" 원이 들어옵니다.</div>
          <div style="margin-top:15px; margin-bottom:17px; font-size:18px;">예산 사용 시작일은 매달 ${incomeMap.incomeDate} 일 입니다.</div>
          
          <input type="button" id="" value="수정"
                                           style="background-color:#FA6400; color:white; border:none; border-radius:10px; width:70px; height:33px;">
          
        <%--  <input disabled type="text" id="income3" class="input-cal" value="${updateList.income}" style="border: none;"> --%>
     