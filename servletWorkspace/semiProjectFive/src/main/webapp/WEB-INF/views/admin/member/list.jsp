<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>user_list</title>
  <link rel="stylesheet" href="/app/resources/css/admin/member/list.css">
        <%@ include file="/WEB-INF/views/layout/util.jsp" %>

  <script defer src="/app/resources/js/admin/member/list.js"></script>


</head>
<body>
  <header>
    <div class="menu"><a href="">홈</a></div>
    <div class="menu"><a href="">메뉴</a></div>

  </header>
  <div class="SchBox">
    <form action="" method="get" onsubmit="">
      <input type="hidden" name="mid" value="dd">
      <select name="search_target" class="exlSt">
        <option value="title">아이디</option>
        <option value="content">닉네임</option>
      </select>
      <input type="text" maxlength="40" class="exlSt" name="search_keyword">
      <span class="button">
        <input type="submit" value="검색">
      </span>
    </form>
  </div>
    <nav>
        <ul>
            <li><a href="#">전체</a></li>
            <li><a href="#">일반회원</a></li>
            <li><a href="#">사업자</a></li>
        </ul>
    </nav>
    <main>
        <section>

            <table border="1">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>아이디</th>
                  <th>닉네임</th>
                  <th>가입일자</th>
                  <th><input type="checkbox" id ="selectAll"></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                 
                  <td>1</td>
                  <td>user01</td>
                  <td> <a href="/admin/stay-register-approve 쿼리스트링">광남이네</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>
                  
                </tr>
                <tr>
                  <td>2</td>
                  <td>user02</td>
                  <td><a href="/admin/stay-register-approve">닉네임02</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>
                  <td>3</td>
                  <td>user03</td>
                  <td><a href="/admin/stay-register-approve">닉네임03</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>
                  <td>4</td>
                  <td>user04</td>
                  <td><a href="/admin/stay-register-approve">닉네임04</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>5</td>
                  <td>biz05</td>
                  <td><a href="/admin/stay-register-approve">ㅇㅇㅇㅇ</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>6</td>
                  <td>user06</td>
                  <td><a href="/admin/stay-register-approve">ㅋㅋㅋ</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>7</td>
                  <td>user07</td>
                  <td><a href="/admin/stay-register-approve">닉넴1234</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>8</td>
                  <td>user08</td>
                  <td><a href="/admin/stay-register-approve">닉 ㅇㅇ</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>9</td>
                  <td>user09</td>
                  <td><a href="/admin/stay-register-approve">닉네임55</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
                <tr>       
                  <td>10</td>
                  <td>user10</td>
                  <td><a href="/admin/stay-register-approve">닉네임10</a></td>
                  <td>24/05/15</td>
                  <td><input type="checkbox" class="ck" value="${vo.no}"></td>

                </tr>
              </tbody>
              <tfoot>
                <td colspan="5">
                  <div>
                    <div><button onclick="banUser();">활동제한</button></div>
                    <div><button onclick="deleteUser();">추방하기</button></div>
                  </td>

              </tfoot>
            </table>



        </section>
    </main>

    <div class="page-wrap">
        <div class="page-area">
            <button>이전</button>
            <a href="">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">4</a>
            <a href="">5</a>
            <button>다음</button>
        </div>
    </div>

    <footer>
        <p>Copyright2024.함께하개 All Rights Reserved</p>
    </footer>
</body>
</html>