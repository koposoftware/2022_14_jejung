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
   
   
<style type="text/css">
.progress {
    width: 350px;
    display: flex;
    height: 1rem;
    overflow: hidden;
    font-size: .75rem;
    background-color: #e9ecef;
}  
    
.btn1 {
    width:400px; 
    font-size:20px; 
   /*  border:6px solid; 
    border-color:#008485; 
    background-color:#008485; 
    */ 
    border:none; 
    background-color:none; 
    
    border-radius:10px; 
    display:inline;
}    
</style> 
</head>


<body>

    <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
    </header>
    
<!--  --><!--  -->
<div id="allPage" style="display:none;">
<!--  --><!--  -->

    <jsp:include page="/WEB-INF/jsp/include/sidebar2.jsp"></jsp:include>


    

    <!-- page title start -->
    <div style="margin-left:670px; margin-top:11px;" class="animate__animated animate__bounce" >
        <img src="${pageContext.request.contextPath}/resources/myicon/park.PNG" 
            style="width:80px; height:79px;"/>
        <span style="font-size:30px; font-weight:bold; margin-top:80px;">&nbsp; 나의 </span> 
        <span style="color:#008485; font-weight:bold; font-size:30px; margin-top:80px;"> 파킹 </span>
        <!-- <span style="font-size:30px; font-weight:bold; margin-top:80px;">현황 </span> -->
    </div>
    <hr style="width:920px; height:7px; background-color:#066262;">
    <!-- page title end -->
    




    
    
    <!-- 프로그레스 로딩바 + 파킹 주머니 현황 텍스트 -->
    <div id="parkingMap" style="margin-left:30%; margin-right:15%;"></div>
       
   
    <!-- 정의정 님의 9월 파킹 내역 -->
    <div id="parkingDetail" style="text-align:center; border:2px solid; border-radius:10px; border-color:#e0e0e0; display:none; padding:25px; margin-top:10px; margin-left:25%; width:900px; height:500px; margin-bottom:30px;">
     
    <h4>나의 <strong style="color:#008485">파킹</strong> 상세 내역</h4>
    
    <div class="d-flex justify-content-between" style="margin-top:30px;">
    <div id="chart" style="display:inline;"></div>
    <div id="chart2" style="display:inline;"></div>
    </div>
    <span style="font-size:20px;margin-left:45px; ">파킹 주머니 증가 추이</span>
    <span style="font-size:20px; margin-left:290px;">주머니 별 파킹 금액</span>
    
    
       <!--  <div id="parkingAmount">
              이번달의 총 파킹 금액은  parkingList[0].autoDivAmount   원 입니다
        </div> -->
    
        <!-- 주머니 추가 버튼 누르면 뜨는 파킹디테일 div -->
        <div></div> 

    </div>   
    
       <!-- 100% 다 모였을 때 뜨는 적금추천문구 자리 -->
   <div id="goSavings"></div> 
   


 <div style="border:3px solid #008485; border-radius:120px; width:500px; margin-left:560px; margin-top:30px; margin-bottom:30px;">
    <div style="text-align:center; margin-top:20px; margin-left:0px;">
    <img src="${pageContext.request.contextPath}/resources/myicon/cong2.gif" style="width:80px; height:60px; display:inline"/><strong style="display:inline; font-size:26px; color:#008485;">&nbsp;&nbsp;축하합니다</strong>
        <div style="font-size:20px; ">파킹 주머니 목표금액에 도달했습니다 <br>이제 파킹 주머니의 잔액을 <strong style="color:#f86823">출금</strong>할 수 있습니다!</div>
        <img class="main_image" src="${pageContext.request.contextPath}/resources/myicon/orange1.png" style="width:37%; height:100px; position: relative;"/>
        <div class="main_image_text" style="position:absolute; top:843px; left:730px; color:white; fontWeight:bold; font-size:18px;">
             <a href="${pageContext.request.contextPath }/savingsMain" style="color:white;">금융상품 보러가기</a>
        </div>                   
    </div>       
 </div>

       

<!--  --><!--  -->
</div>
<!--  --><!--  -->

<div id="loadingBar" style="display:flex; flex-direction:column; justify-content:center; align-items:center; ">
<img src="${ pageContext.request.contextPath }/resources/myicon/cong.gif" style="width:32%;" />
<div style="text-align:center; font-family:hanaBFont; font-size:32px;"><strong style="font-size:37px; color:#008485">축하합니다</strong><br>파킹 주머니 목표액에 도달했습니다!</div>
</div>

<script>
    setTimeout(function(){
        $('#loadingBar').fadeOut(300,function(){
            $('#allPage').fadeIn(300)
        })
    },2000)
</script>  

<script>
     $(document).ready(function(){
        
         var accountNo = '${accountNo}';  
         console.log("accountNo : " + accountNo );
         //let id ='${loginVO.id}';
         //console.log("id 파킹 : " + id );
         fetch("/getParkingSum?accountNo="+accountNo)
         .then(res=>res.json())
         .then(data=>{
        	 console.log(data);
        	 let parkingSum = data.parkingSum*1; 
        	 let parkingBal = data.parkingBal*1; 
        	 let parkingPer = Math.floor(parkingBal/parkingSum*100);
             let str ='';
             
             
             str += '<div class="container text-center"><div class="row">'; 
            
	             str += '<div class="col-6 chartLcoation" style="justify-content : center; align-items : center; display : flex;">';
	                 str += '<div id="chart"></div>';
	                 /* 프로그레스바 들어가는 자리 */          
	                 /* str += '<span>' + parkingPer + '% 달성 </span>'; */
	             str += '</div>'
             
             
	             str += '<div class="col-6 chartLocation2" style="justify-content:center; align-items:center;">';
		             str += '<div style="font-size:22px; margin-top:100px; justify-content:center;"> 지금까지 <br>파킹 주머니 목표금액 <p style="color:#008485; display:inline;"><br>'+ (Math.floor(parkingSum)).toLocaleString('ko-KR') + '&nbsp;원</p> 중';
		             str += '<br> 총 <p style="color:#ff4747; display:inline; font-size:30px;">"' + (Math.floor(parkingBal)).toLocaleString('ko-KR') + ' 원"</p>을 모았어요';
		             
		             str += '<div style="margin-top:10px;">';
		             str += '<input type="button" id="parking" value="상세 파킹 내역" onclick="displayParkingDetail()" class="btn"';
		             str += 'style="font-family:hanaBFont; background-color:#008485; font-size:15px; width:150px; height:40px;';
		             str += 'border-radius:10px; color:white; border:none; margin-right:0px;">';
		             str += '</div>';
		    
		             str += '</div>'; 
		         str +='</div>'; 
             
             str += '</div>';
                    
             $('#parkingMap').append(str);
             
             
             
             
           
             str2 = '<div style="border:3px solid #008485; border-radius:120px; width:500px; margin-left:560px; margin-top:30px; margin-bottom:30px;">';
             str2 += '<div style="text-align:center; margin-top:20px; margin-left:0px;">';
             str2 += '<img src="${pageContext.request.contextPath}/resources/myicon/cong2.gif" style="width:80px; height:60px; display:inline"/><strong style="display:inline; font-size:26px; color:#008485;">&nbsp;&nbsp;축하합니다</strong>';
             str2 += '<div style="font-size:20px; ">파킹 주머니 목표금액에 도달했습니다 <br>이제 파킹 주머니의 잔액을 <strong style="color:#f86823">출금</strong>할 수 있습니다!</div>';
             str2 += '<img class="main_image" src="${pageContext.request.contextPath}/resources/myicon/orange1.png" style="width:37%; height:100px; position: relative;"/>';
             str2 += '<div class="main_image_text" style="position:absolute; top:1352px; left:730px; color:white; fontWeight:bold; font-size:18px;">';
             str2 += '<a href="${pageContext.request.contextPath }/savingsMain" style="color:white;">금융상품 보러가기</a>';
             str2 += '</div>';
             str2 += '</div> ';
             str2 += ' </div> ';
             
                    	 
    
                 $('#goSavings').append(str2);
             
             
          
             
             
             
             
             return new Promise((resolve,reject)=>{
            	 resolve(parkingPer);
             })
         })
         .then(res=>{
        	 parkingPer = res;
             var options = {
                     series: [parkingPer],
                     chart: {
                     height: 400,
                     type: 'radialBar',
                   },
                   plotOptions: {
                     radialBar: {
                       hollow: {
                         margin: 15,
                         size: '60%',
                         image: '/resources/myicon/parking10.png',
                         
                         imageWidth: 165,
                         imageHeight: 165,
                         imageClipped: false
                       },
                       dataLabels: {
                         name: {
                           show: false,
                           color: '#fff'
                         },
                        value: {
                           show: true,
                           color: '#008485',
                           offsetY: 180,
                           fontSize: '26px'
                           
                         }
                       }
                     }
                   },
                   fill: {
                     type: 'image',
                     image: {
                       src: ['/resources/img/My_008485.jpg'],
                     }
                   },
                   stroke: {
                     lineCap: 'round'
                   },
                   labels: ['Volatility'],
                   };

                   var chart = new ApexCharts(document.querySelector("#chart"), options);
                   chart.render();       	 
        	  
         })        
      })
    
</script>


<!-- 상세 파킹 내역 버튼 추가 -->
<script>
   function displayParkingDetail() { 
       $('#parking').hide();
       $('#parkingDetail').show();   
   } 
</script>   


<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script>
$(document).ready(function(){
	  
    var accountNo = '<c:out value="${accountNo}"/>' ;
    //let id ='${loginVO.id}';
     
    let parkingSum = [];
    let parkingMonth = [];
    
    fetch('/getParkingArea?accountNo='+accountNo)
    .then(res=>res.json())
    .then(res=>{
         let parkingAreaList = res;
         console.log(parkingAreaList);
         
         for(i=0; i<parkingAreaList.length; i++) {
        	 parkingSum.push(parkingAreaList[i].PARKINGMONTHSUM*1);
        	 parkingMonth.push(parkingAreaList[i].PARKINGCODE);
         }
         
         let object = {};
         object.parkingSum = parkingSum;
         object.parkingMonth = parkingMonth;
         
         return new Promise((resolve,reject)=>{
             resolve(object);
       })
   })
   .then(res=>{
              let object = res;
              
              var options = {
                      series: [{
                        name: "파킹 금액",
                        data: parkingSum 
                    }],
                      chart: {
                    	  width: 400,
                      height: 350,
                      type: 'line',
                      zoom: {
                        enabled: false
                      }
                    },
                    dataLabels: {
                      enabled: false
                    },
                    stroke: {
                      curve: 'straight'
                    },
                    title: {
                      text: '',
                      align: 'left'
                    },
                    grid: {
                      row: {
                        colors: ['#b3dada', 'transparent'], // takes an array which will be repeated on columns
                        opacity: 0.5
                      },
                    },
                    xaxis: {
                      categories: parkingMonth,
                    }
                    };

                    var chart = new ApexCharts(document.querySelector("#chart"), options);
                    chart.render();
                    
             //let str ='';
             //$('#parkingArea').append(str);    
            })
            
            
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

  //let list

  fetch('/getParkingArea2?accountNo='+accountNo)
    .then(res=>res.json())
    .then(res=>{
         let parkingAreaMap = res;
         console.log(parkingAreaMap);
         console.log(parkingAreaMap.parkingAreaList2);
         
         let pocket2parking = parkingAreaMap.parkingAreaList2;
         let pocket3parking = parkingAreaMap.parkingAreaList3;
         parking2Sum = [];
         parking3Sum = [];
         parkingMonth = [];
         
         for(i=0; i<pocket2parking.length; i++) {
             parking2Sum.push(pocket2parking[i].POCKET2SUM*1);
             parkingMonth.push(pocket2parking[i].PARKINGCODE);
         }
         for(i=0; i<pocket3parking.length; i++) {
        	 parking3Sum.push(pocket3parking[i].POCKET2SUM*1);           
         }
         
         
         
         let object = {};
         object.parking2Sum = parking2Sum;
         object.parking3Sum = parking3Sum;
         object.parkingMonth = parkingMonth;
       
        return new Promise((resolve,reject)=>{
             resolve(object);
       })
   })
   .then(res=>{
         let object = res;
              
         var options = {
                 series: [{
                 name: '고정비',
                 type: 'column',
                 data: parking2Sum
               }, {
                 name: '생활비',
                 type: 'column',
                 data: parking3Sum
               }
               /* , {
                 name: 'Revenue',
                 type: 'line',
                 data: [20, 29, 37, 36, 44, 45, 50, 58] [ 2354200, 2790500 ,3756820 ,4035780 ,4304520 , 5000000]
               } */
               ],
                 chart: {
                	width:400,
                 height: 350,
                 type: 'line',
                 stacked: false
               },
               dataLabels: {
                 enabled: false
               },
               stroke: {
                 width: [1, 1, 4]
               },
               title: {
                 text: '',
                 align: 'left',
                 offsetX: 110
               },
               xaxis: {
                 categories: parkingMonth,
               },
               yaxis: [
                 {
                   axisTicks: {
                     show: true,
                   },
                   axisBorder: {
                     show: true,
                     color: '#008FFB'
                   },
                  
                   
                 },
                
               
               ],
               tooltip: {
                 fixed: {
                   enabled: true,
                   position: 'topLeft', // topRight, topLeft, bottomRight, bottomLeft
                   offsetY: 30,
                   offsetX: 60
                 },
               },
               legend: {
                 horizontalAlign: 'left',
                 offsetX: 40
               }
               };

               var chart = new ApexCharts(document.querySelector("#chart2"), options);
               chart.render();
             
                    
             //let str ='';
             //$('#parkingArea').append(str);    
            })
            
            
   })
</script>















<script>
   /*  $(document).ready(function(){
  
         var accountNo = '<c:out value="${accountNo}"/>' ;

         fetch('/getParkingData?accountNo='+accountNo)
         .then(res=>res.json())
         .then(res=>{
              let parkingHistoryMap = res;
              
              let secondList = parkingHistoryMap.parkingList;
              let thirdList = parkingHistoryMap.parkingList2;

             let str ='';
           
             str += '이번달엔 총 ' + (secondList[0].parkingAmount*1 + thirdList[0].parkingAmount*1) + '원을 파킹했어요<br><br>';
             
             str += '<span>' + secondList[0].fromPocket + ' 주머니 에서는 "' + secondList[0].parkingAmount*1 + '"원을 파킹했고';
             str += '<br> ' + thirdList[0].fromPocket + ' 주머니 에서는 "' + thirdList[0].parkingAmount*1 + '"원을 파킹했어요! </span>';
             
             
             
            //str += '<div style="margin-left:30px;"><p style="color:#008485; display:inline; margin-left:270px;">'+ parkingList[2].FROMPOCKET+' </p> 예산 &nbsp;' + parkingList[2].AUTODIVAMOUNT*1 + '원 중 <p style="color:#008485; display:inline;">"'+ parkingList[2].PARKINGAMOUNT*1 +'원"</p> 파킹 </div>';
	        //str += '<div class="progress" style="width:70%; height:3rem; margin-left:140px;">';
	        //str += '<div class="progress-bar bg-info progress-bar-striped" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:' + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1)/(parkingList[2].AUTODIVAMOUNT*1)  + '%">';
	        //str += + (parkingList[2].AUTODIVAMOUNT*1 - parkingList[2].PARKINGAMOUNT*1) + ' 원 사용  </div></div>'
    
             $('#parkingAmount').append(str);
        })
       
  }) */
</script>
    


</body>
</html>