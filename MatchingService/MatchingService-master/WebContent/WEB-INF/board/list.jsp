<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="spring.model.BoardDto" %>
<%
List<BoardDto> list = (List<BoardDto>)request.getAttribute("list");
%>
<html lang="en">
<title>QnA</title>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet">
<!-- Third party plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />


<!-- javascript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<script>
$(document).ready(function(){
	$("#btnWrite").click(function(){
		location.href="write.do";
		//페이지 주소변경 이동하기
	});
});
</script>

</head>


<body id="page-top">

 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="http://localhost:8082/Matching/index.jsp">MatchingService</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="insert.do">로그인하기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="list.do">문의하기</a></li>
                    </ul>
                </div>
            </div>
        </nav>





<h1>QnA</h1>

<!-- Masthead-->
<!-- <header class="masthead"> -->
<div class="container h-100">
<div class="row h-100 align-items-center justify-content-center text-center">
<div class="col-lg-10 align-self-end">

<button type="submit" id="btnWrite" class="btn btn-outline-danger btn-lg">글쓰기</button>

<!-- 검색 -->
<form class="navbar-search pull-left">
  <input type="text" class="search-query" placeholder="Search">
</form>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>

<c:forEach var="BoardDto" items="${list}">
 <tbody>
    <tr>
      <td>${BoardDto.code}</td>
      <td>${BoardDto.writer}</td>
      <td><a href="view.do?code=${BoardDto.code}">${BoardDto.title}</a></td>
      <td>${BoardDto.content}</td>
      <td>${BoardDto.reg_datetime}</td>   <%-- <fmt:parseDate value="${BoardDto.reg_datetime}" pattern="yyyy-MM-dd HH:mm:ss"/> --%>
      <td>${BoardDto.viewcnt}</td>
    </tr>
 </tbody>
</c:forEach>
</table>  
 
</div>
</div>
</div>
<!-- </header> -->

    
    
    
        
        
         
 <!-- Footer-->
   <footer class="bg-light py-5">
   <div class="container"><div class="small text-center text-muted">
   Copyright © 2020 - Start Bootstrap
   </div></div>
   </footer>
        
        
<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
        

<!-- 기본 부트스트랩 get started -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>       
     


<%-- <div style="width:650px; text-align:right;">
<button type="submit" id="btnWrite">글쓰기</button><br>
</div>

<table border="1" width="650px">
<tr>
<th>번호</th>
<th>작성자</th>
<th>제목</th>
<th>내용</th>
<th>작성일</th>
<th>조회수</th>
</tr>

<c:forEach var="BoardDto" items="${list}">

<tr>
<td>${BoardDto.code}</td>
<td>${BoardDto.writer}</td>
<td><a href="view.do?code=${BoardDto.code}">${BoardDto.title}</a></td>
<td>${BoardDto.content}</td>
<td>${BoardDto.reg_datetime}
<fmt:parseDate value="${BoardDto.reg_datetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
</td>
<td>${BoardDto.viewcnt}</td>
</tr>
</c:forEach>
</table>
 --%>

</body>
</html>