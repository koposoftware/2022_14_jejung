<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<tr>
                          
                        <!-- 고정비 명 -->
                        <th scope="col" width="40%">
                        
                            <p style="font-size:18px; color:black;"> ${insertList[0].fixedName}</p>
                           
                        
                            <!-- <input id="expenseInfo" class="form-control" type="text"> -->
                            <!-- <input type="text" id="fixedName" name="fixedName" class="form-control"> -->
                            
                            
                        </th>
                          

                        

                          <!-- 고정비 금액 -->      
                          <th scope="col">
                            <div class="row">
                                <div class="col-md-9" >
                                
                                <p style="font-size:18px; color:black;">
                                    <fmt:formatNumber value="${insertList[0].fixedCost}" pattern="#,###"/>원
                                </p>
                                    
                                </div>
                                
                                <div class="col-md-2" id="btn-add-div">
                              
                             <input type="button" id="fixedReSettings" value="삭제"
                                    style="background-color:#FA6400; color:white; border:none; border-radius:10px; width:90px; height:38px;">
                                
                                </div>
                            </div>
                          </th>
                          
                          
                        </tr>
              
              
              
              
              
              
              
              
              
              
   