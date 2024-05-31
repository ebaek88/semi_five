<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>member-menu</title>
    <link rel="stylesheet" href="/app/resources/css/member/menu.css">
   	<%@ include file="/WEB-INF/views/layout/util.jsp" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script defer src="/app/resources/js/member/menu.js"></script>
</head>
<body>
    <header class="header">
        <div  class="menu">
            <a href="마이페이지로 이동" class="mypage">
                <i class="fa-solid fa-bars"></i>
            </a>
        </div>
        <div class="menu">
            <a href="/app/home" class="mypage">
                <i class="fa-solid fa-house"></i>
            </a>
        </div>
    </header>

    <div class="member-profile-wrap">
        <img src="/img/member/profile/defaultProfile.jpg" alt="프로필사진">
    </div>
    <div class="member-info">
        <div class="member-nick"> ${loginMemberVo.nick} </div>
        <div class="member-email"> ${loginMemberVo.email}</div>
        <button onclick = "location.href = '/app/member/logout'">로그아웃</button>
    </div>
    <nav class="navbar">
        <ul>
            <li>
                <a href="">
                    <div>내 리뷰</div>
                </a>
            </li>
            <li>
                <a href="./stay_detail_review/stay_detail_review.html">
                    <div> 내 예약 </div>
                </a>
            </li>
            <li>
                <a href="./stay_detail_room/stay_detail_room.html">
                    <div>정보수정 </div>
                </a>
            </li>
            <li>
                <a href="./stay_detail_photo/stay_detail_photo.html">
                    <div>Q&A바로가기</div>
                </a>
            </li>

        </ul>
    </nav>
    <main class="main-content">
        <section class="container">
            
                <div class="stay-info">
                    <div class="stay-info-container">
                        <div class="location">
                            <i class="fa-solid fa-location-dot"></i>
                            <span>인천 강화군 화도면 해안남로 2680-12</span>
                        </div>
                        <div class="telephone">
                            <i class="fa-solid fa-phone"></i>
                            <span>
                                010-0000-0000
                            </span>
                        </div>
                        <div class="internet-address">
                            <i class="fa-solid fa-globe"></i>
                            <span>https://www.instagram.com/seaside__hill</span>
                        </div>

                    </div>
                </div>
                <div class="stay-info"> <!--jsp에서 반복문-->
                    <div class="stay-notice">
                        <div class="notice-title">
                            <i class="fa-solid fa-bullhorn"></i>
                            <!-- 공지사항 제목 -->
                            공지사항 제목                           
                        </div>
                        <div class="notice-content">
                            <!-- 공지사항 내용 -->
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Similique eum vel possimus sed cumque blanditiis ipsum velit esse tenetur natus iure error nobis, debitis vero? Consequuntur, quod repudiandae. Amet, facere.
                        </div>

                    </div>
                </div>
                <div class="stay-info"> <!--jsp에서 반복문-->
                    <div class="stay-notice">
                        <div class="notice-title">
                            <i class="fa-solid fa-bullhorn"></i>
                            공지사항 제목2                           
                        </div>
                        <div class="notice-content">
                             공지사항 내용
                             ㅁㄴㅇㄻㄴㅇㄻㄴㅇ
                             ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ
                             ㅁㄴㅇㄻㄴㄻㄴㅇㄻㄴㄹ
                             ㅁㄴㄹㅇㄴㅁㄹㄴㅇㅁㄻㄴㅇ
                             ㅁㅇㄴㄻㄴㄹㄴㅁㅇㄹ
                             ㅁㄴㅇㄻㄴㄻㅇㄴㄹㅇㄴㅁㄹㄴ
                             ㅁㄹㄴㅇㅇㄴㄻㄴㅇㄹㄴㅇㄹ 
                             zxczxczcxzxcxz
                             zxczxczczczxcxz
                             czczxcsdfadfsadfgsgsgwerwerwe
                             ㅁㄴㅇㄻㄴㅇㄻㄴㅇ
                             ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ
                             ㅁㄴㅇㄻㄴㄻㄴㅇㄻㄴㄹ
                             ㅁㄴㄹㅇㄴㅁㄹㄴㅇㅁㄻㄴㅇ
                             ㅁㅇㄴㄻㄴㄹㄴㅁㅇㄹ
                             ㅁㄴㅇㄻㄴㄻㅇㄴㄹㅇㄴㅁㄹㄴ
                             ㅁㄹㄴㅇㅇㄴㄻㄴㅇㄹㄴㅇㄹ 
                             zxczxczcxzxcxz
                             zxczxczczczxcxz
                             czczxcsdfadfsadfgsgsgwerwerwe
                        </div>

                    </div>
                </div>


               
           
        </section>
    </main>
    <footer>
        <p>Copyright 2024. 함께하개 All Rights Reserved</p>
    </footer>
    <button onclick="topFunction()" id="topBtn" title="Go to top">
      <i class="fas fa-chevron-up"></i>
    </button>
    
</body>
</html>
