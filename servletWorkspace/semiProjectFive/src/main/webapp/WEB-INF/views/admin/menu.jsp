<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Menu</title>
    <%@ include file="/WEB-INF/views/layout/util.jsp" %>
    <link rel="stylesheet" href="/app/resources/css/admin/menu.css">    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
 
</head>
<body>
<header>
    <div class="menu"><a href="/app/home">홈</a></div>
    <div class="menu"><a href="/app/admin/logout">로그아웃</a></div>
</header>

<main>
    
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="/app/admin/member/list">
                <i class="fa-solid fa-users"></i>
            <p>회원 관리</p>
            </a>
        </li>
    </ul>
  </div>
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="">     
                <i class="fa-solid fa-business-time"></i>
                <p>사업자 회원 관리</p>
            </a>
        </li>
    </ul>
  </div>
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="">
                <i class="fa-solid fa-hotel"></i>
                <p>숙박업소 등록 승인</p>
            </a>
        </li>
    </ul>
  </div>
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="">
                <i class="fa-solid fa-list-check"></i>
                <p>공지사항 승인</p>
            </a>
        </li>
    </ul>
  </div>
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="../qna/qnaList.html">
                <i class="fa-solid fa-clipboard-question"></i>
                <p>qna게시판</p>
            </a>
        </li>
    </ul>
  </div>
  <div class="item">
    <ul class="icon-list">
        <li>
            <a href="">
                <i class="fa-solid fa-user-gear"></i>
                <p>ㅇㅇㅇㅇㅇㅇ</p>
            </a>
        </li>
    </ul>
  </div>

</main>

<footer>
    <p>Copyright 2024. 함께하개 All Rights Reserved</p>
</footer>

</body>
</html>
    