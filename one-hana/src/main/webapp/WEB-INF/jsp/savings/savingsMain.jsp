<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

.parent {
    display: flex;
}
.child {
    flex: 1;
}

.button:hover {
    border-color: #008485;
    color: #008485;
}

.active {
    /* border-color: #e90061; */
    border : 5px solid #fca474;
    box-shadow: none !important;
}

.button {
    background-color:#9d9d9d; 
    border:none; 
    height:32px; 
    width:19.5%; 
    border-radius:5px; 
    font-family:hanaBFont;
    color:white;
}


.selectSavings:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.selectSavings:focus {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

.calculAmount:hover {
    background:#008485 !important;
    color:white !important;
    border:1px solid #008485 !important;
}

.calculAmount:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important; 
}  

.compareSavings:focus {
    outline: 0;
    box-shadow:none !important; 
    /* color: white !important; */
}

.versusAmount:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important;
    color: white !important; 
}  

.versusAmount:focus {
    outline: 0;
    box-shadow:none !important; 
    color: white !important;
}

.selProduct:hover {
    background:#008485 !important;
    border:1px solid !important;
    box-shadow:none !important;
    color: white !important; 
}

.selProduct:focus {
    outline: 0;
    box-shadow:none !important; 
    color: white !important;
}

/* .doDivide:hover {
background:none !important;
color:black !important;
border:none !important;
} 

.doDivide:focus {
background:none !important;
color:black !important;
border:none !important;
}   

.btn:focus {
    outline: 0;
    box-shadow:none !important; 
}

 */


/* tr {
   padding: 15px; 
}

th {
    border-right:1px solid;
}

td, th {
    padding: 15px; 
}
 */



.accordion-button:not(.collapsed) {
    color: #008485 !important;
    background-color: #ebf7ee;
    box-shadow: inset 0 -1px 0 rgb(0 0 0 / 13%);
    font-size: 18px !important;
}
</style>



</head>
<body>

     <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header> 
        <jsp:include page="/WEB-INF/jsp/include/sidebar4.jsp"></jsp:include>
    


<div id="savingsHeader"></div>

<div id="savingsMain" >
   
    <div>
    
       <!--  <h3>손님들이 선택하신, 이 상품 어떠세요?</h3> -->


<div style="text-align:center; margin-top:50px; margin-right:70px;">
<h1 style="margin-bottom:50px;">손님들이 선택하신, <span style="color:#f7570b;">이 상품 어떠세요?</span></h1>
	<ul>
		<li style="display:inline-block;">
		    <div style="text-align:center; width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#ffd400; background-color:#ffd400;">
		      <div style="font-size:27px; margin-top:35px;">하나의<br>정기예금</div>
		      <div style="font-size:20px; margin-top:20px; margin-bottom:26px;">오늘의 금리는?</div>
		      <div style="font-size:15px; color:#707070;">(1백만원 이상, <br>1개월 이상 ~ 5년 이내)</div>
		    </div>
		</li>
		
		<li style="display:inline-block;">
		    <div style="width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#99cece; background-color:#99cece;">
		      
		      <div style="font-size:27px; margin-top:35px;">내집마련 더블업<br>(Double-Up) 적금</div>
		      <div style="font-size:20px; margin-top:7px;">최저 연 1.75% ~<br>최고 연 5.50%</div>
		      <div style="font-size:15px; margin-top:8px; color:#707070;">(세전, 1년, 이벤트금리포함,<br>2022.09.16기준)</div>
		    </div>
		</li>
		
		<li style="display:inline-block;">
		    <div style="width:250px; height:250px; border-radius:40px; border:1px solid; border-color:#ffc0cb; background-color:#ffc0cb;">
		      <div style="font-size:27px; margin-top:35px;">일달러<br>외화적금</div>
		      <div style="font-size:20px; margin-top:7px;">최저 연 2.51% ~<br>최고 연 3.01%</div>
		      <div style="font-size:15px; margin-top:8px; color:#707070;">(세전, 이벤트금리포함,<br>2022.09.23기준)</div>
		    </div>
		</li>
	</ul>


    <div style="text-align:center; margin-top:50px;">
        <h3 style="font-size:25px; color:#707070; margin-bottom:40px;">원하시는 상품을 직접 찾아볼까요?</h3>
        
        <div class="d-flex justify-content-start">
        <button style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:160px; background-color:#f3f3f3; border-color:#f3f3f3; font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center"
         type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings">예적금</button>
        <!-- <div style="width:87px; height:87px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:22px; color:#868686; display:flex; align-items:center; justify-content:center">적금</div> -->
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">자유<br>입출금</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">외화<br>상품</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">신탁</div>
        <div style="width:90px; height:90px; border:1px solid; border-radius:40px; margin-left:25px; background-color:#f3f3f3; border-color:#f3f3f3;  font-size:20px; color:#868686; display:flex; align-items:center; justify-content:center">한시상품<br>ELD</div>
        </div>
        
    </div>

<!-- 
 <button type="button" class="selectSavings col-3 btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectSavings"
         style="width:400px; font-size:20px; font-family:hanaBFont; margin-top:40px;" >
            나만의 예적금 찾기
        </button>  -->   
        

</div>
</div>
   
   

</div>	
	


<div id="compareBtn"></div>

<!-- 나의 맞춤형 적금 찾기 모달 버튼  -->
<div class="modal fade" id="selectSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="border:5px solid; border-color:#008485;">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">잔액 이동 재설정</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="modalbody">
            
            <h3 style="text-align:center; margin-bottom:40px;">나만의 
            <strong style="color:#008485; display:inline;">예적금</strong> 
            찾기</h3>
            
            
                <!-- 상품유형 -->
                <div style="margin-bottom:35px;">
	               <span style="margin-left:10%; font-size:20px;">상품유형</span>
	                   <div class="nav productType" style="text-align:center; margin-top:5px;">
	            
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="적금"
		                           style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
	                         적금
	                       </button>
	                     
		                   <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="예금"
	                                style="font-size:18px; font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
	                         예금
	                       </button> 
      
	                   </div>
	            </div>
	           
	           
	           
	            <!-- 이자 지급방식 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">적립방법</span>
                       <div class="nav accumulateMethod" style="text-align:center; margin-top:5px;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="자유적립식"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            자유적립식
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="정액적립식"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:40%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             정액적립식
                           </button> 
                           
                      <!--      <input type="button" class="button" id="interestMedtod1" value="만기일지급식" style="display:inline; width:40%; height:50px; border-radius:5px; background:none;">
                           <input type="button" class="button" id="interestMedtod2" value="월이자지급식" style="width:40%; height:50px; border-radius:5px; background:none;">
                       -->
                       </div>
                </div>
                
                
                
                
                <!-- 가입기간 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">가입기간</span>
                       <div class="nav minPeriod" style="text-align:center; margin-top:5px;">
                       
                       
                       
                       
                         <!--    <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3개월"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3개월
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6개월"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6개월
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="1년"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="2년"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2년
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3년"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="5년"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5년
                           </button>  -->
                           
                           
                           
                           
                           
                              <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="3"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            3개월
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="6"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             6개월
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="12"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             1년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="24"
                                   style="font-size:18px; font-family:hanaBFont; margin-left:9%; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            2년
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="36"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                             3년
                           </button> 
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="60"
                                    style="font-size:18px; font-family:hanaBFont; display:inline; width:26%; height:50px; border-radius:5px; margin-bottom:5px; background:none;">
                             5년
                           </button> 
                           
                           
                         
       
                       </div>
                </div>
            
            
            
                <!-- 예정 신규금액 -->
                <!-- minAmount보다 크고 maxAmount보다 작으면 됨 -->
                <div style="margin-bottom:35px;">
                   <span style="margin-left:10%; font-size:20px;">예정 신규금액</span>
                       <div style="margin-left:auto; margin-right:auto; text-align:center; margin-top:5px;">
                           
                           <input type="text" id="firstAmount" name="firstAmount" value="" placeholder="예치금액 (원)" class="form-control" 
                           style="font-size:20px; color:black; text-align:right; font-family:hanaBFont; margin-left:42px; width:81%; height:50px; border-radius:5px;"><br>
                           
                              <button class="button" id="50000" onClick="amountClick(this.id)">+5만</button>
                              <button class="button" id="100000" onClick="amountClick(this.id)">+10만</button>
                              <button class="button" id="1000000" onClick="amountClick(this.id)" >+100만</button>
                              <button class="button">초기화</button>
                       </div>
                </div>
                
                
               
                
                <!-- 우대금리항목 추가 -->
                <div class="d-flex justify-content-between" style="text-align:center;">
                    <div style="font-family:hanaBFont; color:#008485; font-size:20px; margin-left:10%;">우대금리 항목 추가</div> 
                    <div style="font-family:hanaBFont; margin-right:6%;">
	                    <!-- <input type="button" onclick="displayPrefer()" id="displayPreferBtn" 
	                    value="+" > -->
	                    
	                    <input type="image" onclick="displayPrefer()" id="displayPreferBtn" 
                        src="${pageContext.request.contextPath}/resources/myicon/My_plus.png"
                        style="width:40%;" > 
	                     
	                  
	                    
                    </div>
                
                </div>
                
               
               <div id="preferList"  style="display:none; ">
                  
                    <span style="font-family:hanaBFont; margin-left:10%; margin-top:10px;">우대금리 항목 안내 △</span><br>
                    
                        <div style="width:80%; margin-left:10%; font-family:hanaBFont;  margin-top:10px;">● 금액 밎 가입 기간은 필수 조건이며, 우대금리 항목은 선택 시 선택 사항입니다</div>
                        <div style="width:80%; margin-left:10%; font-family:hanaBFont;">● 같은 우대금리 항목이라도 상품별로 적용되는 상세요건(예, 적용우대 이율)은 다름을 안내드리오니,
                          상품 가입 전 반드시 선택하신 상품의 적용 우대금리 상세 내용을 확인 후 가입을 진행하여 주시기 바랍니다.</div>


                        <div class="nav preferCondition1" style="text-align:center; margin-top:25px;">
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="카드실적"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            카드실적
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="아파트관리비 실적"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             아파트관리비 실적
                           </button> 
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="주택청약종합저축"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            주택청약종합저축
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="첫거래"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             첫거래
                           </button> 
                           
                           
                           </div>
                           
                           
                           <div class="nav preferCondition2" style="text-align:center;">
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="연금이체"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            연금이체
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="급여이체"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             급여이체
                           </button> 
                           
                           
                           
                           <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="온라인 신규"
                                   style="margin-left:9%; display:inline; width:40%; height:50px; font-family:hanaBFont; border-radius:5px; margin-bottom:5px; background:none; margin-right:2%;">
                            온라인 신규
                            </button>
                     
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" aria-selected="true" value="하나머니"
                                    style="display:inline; width:40%; height:50px; border-radius:5px; font-family:hanaBFont; margin-bottom:5px; background:none;">
                             하나머니
                           </button> 
                          
                       </div> <br>
               
               
                       <span style="margin-left:10%; font-family:hanaBFont;">우대금리 항목이란? ▽</span>
               </div> 
                
      
            
         
            
            
          </div>
          
           <div id="modalFooter" style="text-align:center; margin-bottom:20px;">
            <button type="button" class="btn btn-primary selProduct" id="divBtn" data-bs-dismiss="modal" onclick="sortSavings()" 
                    style="width:76%; font-size:20px; font-family:hanaBFont; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">조회</button>         
            </div>
        </div>
      </div>
    </div>

   
   
   
   
  
   
   
   
   
   
   
<!-- 선택한 적금 두개 비교하기 모달 버튼  -->
<div class="modal fade" id="compareSavings" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content" style="border: 4px solid #008485;">
         <!--  <div class="modal-header"> -->
            <!-- <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 190px;">잔액 이동 재설정</h5> -->
            <p style="align:right;">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="float: right;"></button>
            </p>   
            
          <!-- </div> -->
          <div class="modal-body" id="comparemodalbody">
     
           </div>
           <div id="comparemodalFooter" style="font-family:hanaBFont; text-align:center; margin-bottom:20px;">
            <!-- <button type="button" class="btn btn-primary" id="resolveBtn"  
                    style="width:76%; font-size:22px; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;">만기 예상액 계산하기</button>         
                    data-bs-dismiss="modal" -->
            </div>
        </div>
      </div>
    </div>

   
   
   
   
   
   
   
   
   
   
   

<script>
function displayPrefer() {
	
	$('#displayPreferBtn').hide();
    $('#preferList').show();
}

</script>   
   

<!--    
    //let productType = document.getElementById('productType').children('.active').value; -->
<script>
function addActive() {
	//onclick="addActive();
	
//	let productType = $('.productType').children('.active').val();
//	let interestMethod = $('.interestMethod').children('.active').val();
//	let minPeriod = $('.minPeriod').children('.active').val();
//    let preferCondition = $('.preferCondition').children('.active').val();   
}
</script>




<!-- 모달에서 조회버튼 눌렀을 때 실행되는 온클릭함수 -->
<script>
function sortSavings() {
    
	let productType = $('.productType').children('.active').val();
	let accumulateMethod = $('.accumulateMethod').children('.active').val();
	let minPeriod = $('.minPeriod').children('.active').val();
	let preferCondition1 = $('.preferCondition1').children('.active').val();
	let preferCondition2 = $('.preferCondition2').children('.active').val();
	let firstAmount = $('#firstAmount').val();
    //console.log(minAmount);
   /*  fetch("/doReBudgetSet?accountNo="+accountNo+"&toPocket="+toPocket+'&autoDivDate='+autoDivDate+'&divAmount='+divAmount)

            .then(res=>{
                
                 
                changeModal(toPocket);
                
          }) */
          
          
          $.ajax({
              url : '${ pageContext.request.contextPath }/selectSortSavings',
              type : 'post',
              data : {
            	  productType  : productType,
            	  accumulateMethod :accumulateMethod,
                  minPeriod  : minPeriod,
                  firstAmount : firstAmount,
                  preferCondition1 : preferCondition1,
                  preferCondition2 : preferCondition2
                  
              },
              success : function(data) {
            	  console.log(data);
            	  console.log(data[0].TARGET);
            	  
            	  
            	  $('#savingsMain').empty();
            	  
            	  
            	  str3 ='';
            	  
            	  str3 += '<div style="margin-left:470px; margin-top:32px;">';
            	 
            	  str3 += '<h5 style="font-size:23px;">" <strong style="font-size:23px; color:#008485; display:inline;">정의정</strong> 님이 선택하신 조건에 딱 맞는 상품을 추천해드려요! "</h5>';
            	  str3 += '</div>';            	  
            	  str3 += '<hr style="width:840px; margin-bottom:30px; height:7px; background-color:#066262;">';
            	  
            	  $('#savingsHeader').append(str3);
            	 
            	  /*   <div style="margin-left:670px; margin-top:9px;" class="animate__animated animate__bounce" >
            	        <img src="${pageContext.request.contextPath}/resources/myicon/park.PNG" 
            	            style="width:80px; height:70px;"/>
            	        <span style="font-size:30px; font-weight:bold; margin-top:80px;">&nbsp; 나의 </span> 
            	        <span style="color:#008485; font-weight:bold; font-size:30px; margin-top:80px;"> 파킹 </span>
    */
            	    
            	    
            	  
            	  
            	  
            	  
            	  
            	  
            	
                      
            	  for(let i=0; i<data.length; i++) {
            		  str ='';
            		  str += '<div style="font-family:hanaBFont; margin-bottom:20px; border:3px solid #9d9d9d; padding:10px; width:60%; border-radius:40px; display:flex; justify-content:space-between;" class= "row">';
            		  str += '<div class="col-8">';
            		  str += '<div class="d-flex flex-column">';
            		  str += '<div class="d-flex" style="font-family:hanaBFont; margin-top:17px;">';
            		  str += '<input name="checkSavings" type="checkbox" value="'+data[i].SAVINGSNAME+'" style="margin-left:15px; margin-right:10px;">';
            		  str += '<h4 style="margin-left:10px; margin-right:20px;">' + data[i].SAVINGSNAME + '</h4>';
            		  
            	
            		  
            		  if( data[i].STATUS == 'new') {
            			  str += '<img src="${pageContext.request.contextPath}/resources/myicon/newest3.png"'; 
                          str += 'class="animate__animated animate__heartBeat" style="width:16%; margin-top:-20px;"/>';
            		  }
            		  
            		  
            		  str += '</div>';
            		
            		  
            		  str += '<div style="margin-left:20px;">';
                      str += '<pre style="word-wrap:break-word; white-space:pre-wrap; white-space:-moz-pre-wrap; white-space:-pre-wrap; ';
                      str += 'white-space:-o-pre-wrap; word-break:break-all;';
                      str += 'font-weight:bold; font-size:18px; font-family:hanaBFont; fontWeight:bold; margin-top:7px;">' + data[i].PRODUCTDESC + '</pre>';
                      str += '</div>';
                    
            		  
            		  
            		  
            		  str += '</div>';
            		  str += '<button type="button" style="margin-left:20px; background-color:#fca474; border:none; color:white;  width:300px; height:42px; font-family:hanaBFont; border-radius:30px;">';
            		  str += '자세히보기 </button> </div>';
            		  
            		  
            		  str += '<div class="col-3" style="text-align:right; margin-left:20px; font-weight:bold; display: flex; justify-content: flex-end; align-items: center;">';
            		  str += '<div style="font-size:20px; display:inline;"> 최대 연 <br><strong style="font-size:30px; color:#008485;">' + (data[i].BASICRATE + data[i].PREFERRATE) + '% </strong><br>  (세전, ' + data[i].MINPERIOD + '개월) </div>';
            		  str += '</div><br></div>';
            		  $('#savingsMain').append(str);
            		  
            	  }  
            	  
            	  
                  str2 = '';
                  str2 += '<div style="margin-left:580px;">';
                  str2 += '<button type="button" class="compareSavings col-3 btn btn-primary" onclick="compareSavings();" data-bs-toggle="modal" data-bs-target="#compareSavings"';
                  str2 += 'style="width:400px; height:50px; font-size:20px; color:#434343; background-color:#66b5b6; border:none; border-radius:30px; font-family:hanaBFont;">';
                  str2 += '선택한 상품 비교하기';
                  str2 += '</button></div>';
                  $('#compareBtn').append(str2);
                  
                  
              }
          })
}
</script>   

<script type="text/javascript">
let compareArray = new Array()
function compareSavings() {
	let checkVal = new Array();
	$('input:checkbox[name=checkSavings]:checked').each(function() {
		checkVal.push($(this).val());
		
		
		//console.log(typeof checkVal);
		
	})
	       console.log(checkVal);
	       $.ajax({
            url : '${ pageContext.request.contextPath }/compareSortSavings',
            type : 'post',
            data : {
                "checkVal"  : checkVal
                
            },
            success : function(data) {
               // console.log(data);
              //  console.log(data[1].SAVINGSNAME);
                
                
                str = '';
                str += '<h3 style="font-family:hanaBFont; text-align:center; margin-bottom:40px;">선택한 <strong style="color:#008485">상품 비교</strong></h3>';
                
                
     
                /* str += '<div class="d-flex justify-content-between" style="margin-left:25px; width:700px; margin-bottom:30px;">'; */
                str += '<div class="d-flex justify-content-start" style="margin-left:130px; width:700px; margin-top:50px; margin-bottom:15px;">';
                str += '<strong style="font-size:24px; margin-right:70px;">' + data[0].SAVINGSNAME + '</strong>';
                str += '<strong style="font-size:25px; margin-right:70px;">VS</strong>';
                str += '<strong style="font-size:24px;">' + data[1].SAVINGSNAME + '</strong>';
                str += '</div>';
                str += '<hr style="width:700px; height:6px; color:#008485; margin-left:25px; margin-bottom:15px;">';
                
                str += '<div style="margin-left: 25px;">';
                
                str += '<div class="accordion" id="accordionExample" style="width:700px;">';

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingOne">';
                str += '<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">';
                str += '상품설명 </button></h2>';
                str += '<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                
                str += '<div style="width:50%; padding-right:3px;">';
                str += '<strong>' + data[0].PRODUCTDESC + '</strong>';
                str += '</div>';
                str += '<div style="width:50%; border-left:3px solid #008485; padding-left:10px;" >';
                str += '<strong>' + data[1].PRODUCTDESC + '</strong>';
                str += '</div>';
                
                str += '</div></div></div>';

                
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingTwo">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">';
                str += '가입 대상</button></h2>';
                str += '<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                
                str += '<div style="width:50%; padding-right:3px;">';
                str += '<strong>' + data[0].TARGET + '</strong> ';
                str += '</div>';
                str += '<div style="width:50%; border-left:3px solid #008485; padding-left:10px;" >';
                str += '<strong>' + data[1].TARGET + '</strong> ';
                str += '</div>';
                
                str += '</div></div></div>';

                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingThree">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">';
                str += '적립 방법 </button></h2>';
                str += '<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].ACCUMULATEMETHOD + '</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].ACCUMULATEMETHOD + '</strong>';
                str += '</div></div></div>';


                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingFour">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">';
                str += '적립 한도 </button></h2>';
                str += '<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[0].MAXLIMIT)).toLocaleString('ko-KR') + ' 원</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[1].MAXLIMIT)).toLocaleString('ko-KR') + ' 원</strong>';
                str += '</div></div></div>';


                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingFive">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">';
                str += '가입 기간</button></h2>';
                str += '<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].MINPERIOD + ' 개월 ~ ' + data[0].MAXPERIOD + ' 개월 </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].MINPERIOD + ' 개월 ~ ' + data[1].MAXPERIOD + ' 개월 </strong>';
                str += '</div></div></div>';
                  
                  
                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingSix">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">';
                str += '가입 금액</button></h2>';
                str += '<div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[0].MINAMOUNT)).toLocaleString('ko-KR') + ' 원 ~ ' + (Math.floor(data[0].MAXAMOUNT)).toLocaleString('ko-KR') + ' 원</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + (Math.floor(data[1].MINAMOUNT)).toLocaleString('ko-KR') + ' 원 ~ ' + (Math.floor(data[1].MAXAMOUNT)).toLocaleString('ko-KR') + ' 원</strong>';
                str += '</div></div></div>';

                  
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingSeven">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">';
                str += '기본 금리</button></h2>';
                str += '<div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].BASICRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].BASICRATE + ' % </strong>';
                str += '</div></div></div>';
                  

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingEight">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">';
                str += '최대 금리</button></h2>';
                str += '<div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].MAXRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].MAXRATE + ' % </strong>';
                str += '</div></div></div>';
                  

                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingNine">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">';
                str += '우대 금리</button></h2>';
                str += '<div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].PREFERRATE + ' % </strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].PREFERRATE + ' % </strong>';
                str += '</div></div></div>';


                 
                str += '<div class="accordion-item">';
                str += '<h2 class="accordion-header" id="headingTen">';
                str += '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">';
                str += '우대 금리 항목</button></h2>';
                str += '<div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">';
                str += '<div class="accordion-body d-flex justify-content-between">';
                str += '<strong style="font-size:17px;">' + data[0].CONDITION1 + ' / ' + data[0].CONDITION2 + '</strong>';
                str += '<strong style="color:#008485;"> | </strong>';
                str += '<strong style="font-size:17px;">' + data[1].CONDITION1 + ' / ' + data[1].CONDITION2 + '</strong>';
                str += '</div></div></div>';
                str += '</div>';
                
                
                
                str += '</div>';
                
                
                
                
                
                
                
                
                
                
                
                $('#comparemodalbody').append(str);
               
               // tes1(data);
               
               let str2 ='';
               compareArray = data
               str2 += '<button type="button" class="btn btn-primary calculAmount" style="font-family:hanaBFont; font-size:17px; width:76%; margin-top:20px; margin-bottom:25px; height:50px; border-radius:10px;" onclick="expectedSavings()"> 만기 예상액 계산하기</button>';
              
               $('#comparemodalFooter').append(str2);
               
               //console.log(data[0]. + '가나다');
             
             }
        })	
}


function expectedSavings() {
    console.log('compareArray = '+compareArray[0].BASICRATE);
  //console.log(typeof checkVal); 
  
  $('#comparemodalbody').empty();
  let str = '';
  
  str += '<div style="text-align:center; font-family:hanaBFont;">'; 
  str += '<h4 style="margin-bottom:50px;">선택한 상품의 <strong style="color:#008485; margin-bottom:30px;">"만기예상액"</strong>을 알아볼 수 있어요!</h4>';
  str += '<div style="margin-bottom:30px;">';
  

  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;">매월&nbsp;</span>';
  str += '<input type="text" id="savingsAmount" name="savingsAmount" style="font-size:30px; width:150px; text-align:right; font-weight:700; color:#008485; outline:none; border:none; border-bottom:2px solid #008485;">';
  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;">원을&nbsp;&nbsp;</span>';
  

  str += '<select name="savingsTerm" id="savingsTerm"';
  str += 'style="width:100px; font-size:26px; border:none; outline:none; color:#008485; text-align:center; height:30px;">';
  str += '<option value="1">12개월</option>';
  str += '<option value="2">24개월</option>';
  str += '<option value="3">36개월</option>';
  str += '</select> ';
  
  str += '<span style="font-size:26px; font-weight:700; color:#263A4F;"> 동안&nbsp; 모으면? </span>';
  str += '</div>';
  str += '</div>'; 

  /*  background-color:#f2f2f1; */
  
  $('#comparemodalbody').append(str);
  
  
  
  $('#comparemodalFooter').empty();
  let str2 = '';
  str2 += '<button type="button" class="btn btn-primary versusAmount" style="font-family:hanaBFont; width:76%; font-size:17px; margin-top:20px; margin-bottom:25px; height:50px;';
  str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> 만기예상액 비교하러 가기 </button>';
  $('#comparemodalFooter').append(str2);
 
}



function goExpectedSavings() {
	//console.log('goExpectedSavings() = ' + compareArray[0].BASICRATE);
	
	/* 공통조건 */
	let savingsAmount = document.getElementById('savingsAmount').value*1; //원금
	let savingsTerm = $('select[name=savingsTerm]').val()*12; //가입개월수
	console.log(savingsAmount);
	console.log(savingsTerm);
	
	/* select1 금리 조건 */
	let basicRate1 = compareArray[0].BASICRATE*0.01;
	let prefRate1 = compareArray[0].PREFERRATE*0.01;
	let maxRate1 = compareArray[0].MAXRATE*0.01;
	//console.log('goExpectedSavings() = ' + compareArray[0].BASICRATE);
	//console.log('goExpectedSavings() = ' + compareArray[0].PREFERRATE);
	
	/* select2 금리 조건 */
    let basicRate2 = compareArray[1].BASICRATE*0.01;
    let prefRate2 = compareArray[1].PREFERRATE*0.01;
    let maxRate2 = compareArray[1].MAXRATE*0.01;
    
    
    
    
    
    
    
    
    
    /////////////////////////////////////////
    
    
     //compareArray[0] 우대금리미포함(basicRate)
    let result11sehu = 0; 
    let sehu11 = 0;
    if(compareArray[0].SAVINGSTYPE==='단리') {
        console.log('단리');
        sehu11 = savingsAmount*savingsTerm*basicRate1*0.154;
        console.log(sehu11 + '단리' + compareArray[0].SAVINGSNAME);
        
        
    } else if(compareArray[0].SAVINGSTYPE==='복리') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result11sehu += savingsAmount * Math.pow(1+(basicRate1/12),i);
            //console.log(result);
        }
        //console.log("세후이자" + ((result11sehu-(savingsAmount*savingsTerm)) - (result11sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu11 = ((result11sehu-(savingsAmount*savingsTerm)) - (result11sehu-(savingsAmount*savingsTerm)) * 0.154); //세후이자
        console.log(sehu11 + '복리' + compareArray[0].SAVINGSNAME);
    }
    
   

    
    
    
    
    //compareArray[1] 우대금리미포함(basicRate)
    let result22sehu = 0; 
    let sehu22 = 0;
    if(compareArray[1].SAVINGSTYPE==='단리') {
        //console.log('단리');
        sehu22 = savingsAmount*savingsTerm*maxRate2*0.154;
        
    } else if(compareArray[1].SAVINGSTYPE==='복리') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result22sehu += savingsAmount * Math.pow(1+(basicRate2/12),i);
            //console.log(result);
        }
        //console.log("세후이자" + ((result22sehu-(savingsAmount*savingsTerm)) - (result22sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu22 = ((result22sehu-(savingsAmount*savingsTerm)) - (result22sehu-(savingsAmount*savingsTerm)) * 0.154); //세후이자
    }
    
    
    //console.log("컴페어어레이2" + ((savingsAmount*savingsTerm)+sehu2));
    
    
    
    
    
    
    
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //우대금리포함
    //우대금리포함
    //우대금리포함

    /* 복리계산식 
       SAVINGSTYPE='복리' 라면 */
    let result02 = 0; 
    for(let i=1; i<savingsTerm+1; i++) {
    	result02 += savingsAmount * Math.pow(1+(maxRate1/12),i);
        //console.log(result);
    }
    //console.log("세후이자" + ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154));
    
    let sehu = ((result02-(savingsAmount*savingsTerm)) - (result02-(savingsAmount*savingsTerm)) * 0.154); //세후이자
    
    //console.log(compareArray[0].SAVINGSTYPE);
    
    
    

    
    
    
    
    
    
    
    
  //compareArray[0] 우대금리포함(maxRate)
    let result1sehu = 0; 
    let sehu1 = 0;
    if(compareArray[0].SAVINGSTYPE==='단리') {
        //console.log('단리');
        sehu1 = savingsAmount*savingsTerm*maxRate1*0.154;
        console.log(sehu1 + '단리우대포함');
        
        
    } else if(compareArray[0].SAVINGSTYPE==='복리') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result1sehu += savingsAmount * Math.pow(1+(maxRate1/12),i);
            //console.log(result);
        }
        console.log("세후이자" + ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu1 = ((result1sehu-(savingsAmount*savingsTerm)) - (result1sehu-(savingsAmount*savingsTerm)) * 0.154); //세후이자
    }
    
    console.log('컴페어어레이1' + sehu1);

    
    
    
    
    //compareArray[1] 우대금리포함(maxRate)
    let result2sehu = 0; 
    let sehu2 = 0;
    if(compareArray[1].SAVINGSTYPE==='단리') {
        //console.log('단리');
    	sehu2 = savingsAmount*savingsTerm*maxRate2*0.154;
    	
    } else if(compareArray[1].SAVINGSTYPE==='복리') {
        
        for(let i=1; i<savingsTerm+1; i++) {
            result2sehu += savingsAmount * Math.pow(1+(maxRate2/12),i);
            //console.log(result);
        }
        console.log("세후이자" + ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154));
        sehu2 = ((result2sehu-(savingsAmount*savingsTerm)) - (result2sehu-(savingsAmount*savingsTerm)) * 0.154); //세후이자
    }
    
    
    console.log("컴페어어레이2" + ((savingsAmount*savingsTerm)+sehu2));

    
    
    
  
    
    
    
	
	
	/* 
	   let basicRate = 0.029;
	    let prefRate = 0.041;
	    let term = 12;
	    
	    
	    let a = 200000; //원금
	    let result = 0;
	    
	    for(let i=1; i<term+1; i++) {
	        result += a * Math.pow(1+(prefRate/12),i);
	        console.log(result);
	    }
	    
	    console.log("세후이자" + ((result-(a*term)) - (result-(a*term)) * 0.154));
	
	 */
	
	$('#comparemodalbody').empty();
	
	 /*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  */
	 
	 
    
  let str = '';
        str += '<div style="text-align:center;">';
        str += '<h3 style="margin-bottom:30px;"><strong style="color:#008485; margin-bottom:40px;">만기수령금&nbsp;</strong>(예상)</h3>';
        
        str += '<ul style="margin-left:-30px">';
        str += '<li style="display:inline-block;"><h4>' + compareArray[0].SAVINGSNAME + '</h4>';
        
        str += '<div style="margin-top:10px; width:330px; height:400px; padding:15px; border-radius:20px; border:1px solid; background-color:#486A80; ">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">우대금리 미포함</span>';
            str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu11)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">만기원금</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">만기이자(' + compareArray[0].SAVINGSTYPE + ', 세후)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu11)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '<hr style="margin-top:20px; margin-bottom:20px; color:white;">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">우대금리 포함</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu1)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">만기원금</span>';
        str += '<span style="color:#E8E8E8;">' + (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">만기이자(' + compareArray[0].SAVINGSTYPE + ', 세후)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu1)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '</div><button style="width:330px; height:50px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">가입진행</button>';
        str += '</li>';
        
        
        
        
        
        
        
        str += '<li style="display:inline-block;"><h4>' + compareArray[1].SAVINGSNAME + '</h4>';
        str += '<div style="margin-top:10px; width:330px; height:400px; padding:15px; border-radius:20px; border:1px solid; background-color:#486A80; ">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">우대금리 미포함</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">'+ (Math.floor((savingsAmount*savingsTerm) + sehu22)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">만기원금</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">만기이자(' + compareArray[1].SAVINGSTYPE + ', 세후)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu22)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '<hr style="margin-top:20px; margin-bottom:20px; color:white;">';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="font-size:23px; color:white;">우대금리 포함</span>';
        str += '<span style="font-size:25px; color:#FFDE00;">' + (Math.floor((savingsAmount*savingsTerm) + sehu2)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between" style="margin-top:30px;">';
        str += '<span style="color:#E8E8E8;">만기원금</span>';
        str += '<span style="color:#E8E8E8;">' + (Math.floor(savingsAmount*savingsTerm)).toLocaleString('ko-KR') + ' 원</span>';
        str += '</div>';
        
        str += '<div class="d-flex justify-content-between">';
        str += '<span style="color:#E8E8E8;">만기이자(' + compareArray[1].SAVINGSTYPE + ', 세후)</span>';
        str += '<span style="color:#E8E8E8;">'+ (Math.floor(sehu2)).toLocaleString('ko-KR') +' 원</span>';
        str += '</div>';
        
        str += '</div><button style="width:330px; height:50px; border-radius:10px; margin-top:30px; background-color:#008485; color:white; border:none;">가입진행</button>';
        str += '</li>';
        
        str += '</ul>';
        str += '<button style="width:180px; height:50px; border-radius:10px; margin-top:30px; background-color:#868686; color:white; border:none;">돌아가기</button>';
        str += '</div>';

	 
	 
	 /*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  *//*  */
	 
	 
	 $('#comparemodalbody').append(str);
	  
	  
	  
	  $('#comparemodalFooter').empty();
	/*   let str2 = '';
	  str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:60%; margin-top:20px; margin-bottom:25px; height:50px;';
	  str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> 만기예상액 비교하러 가기 </button>';
	  str2 += '<button type="button" class="btn btn-primary" style="font-family:hanaBFont; width:30%; margin-top:20px; margin-bottom:25px; height:50px;';
      str2 += 'border-radius:10px;" onclick="goExpectedSavings()"> 만기예상액 비교하러 가기 </button>';
	  $('#comparemodalFooter').append(str2); */
	
}
</script>

<script>
function amountClick(input){
	console.log(input);

	$('input[name=firstAmount]').attr('value',input);
}



</script>
   
   
   
</body>
</html>
















