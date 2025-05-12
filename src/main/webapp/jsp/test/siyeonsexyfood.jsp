<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>오늘 뭐 먹지? - 감정 기반 추천</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f9f9f9;
      padding-top: 60px;
    }
    .container {
      max-width: 720px;
    }
    .title {
      font-weight: bold;
      color: #333;
    }
  </style>
</head>
<body>
  <div class="container shadow p-5 bg-white rounded">
    <h2 class="text-center mb-4 title">🍽 오늘 뭐 먹지?</h2>
    <p class="text-center text-muted mb-4">기분이나 땡기는 키워드를 입력해 보세요 (예: 매운, 피곤, 해장, 혼밥 등)</p>

    <form method="get" action="siyeonsexyfood.jsp" class="form-inline justify-content-center mb-4">
      <input type="text" name="keyword" class="form-control mr-2" size="40"
             placeholder="입력 예: 짜증나, 속쓰림, 든든한" value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>" />
      <button type="submit" class="btn btn-primary">추천받기</button>
    </form>

<%
  request.setCharacterEncoding("UTF-8");
  String keyword = request.getParameter("keyword");
  if (keyword != null) keyword = keyword.trim();

  // 1. 메뉴 키워드 맵
  Map<String, List<String>> menuMap = new HashMap<>();
  menuMap.put("매운", Arrays.asList("불닭볶음면", "떡볶이", "마라탕", "불족발", "매운치킨"));
  menuMap.put("든든한", Arrays.asList("돈까스", "김치찌개", "제육덮밥", "닭갈비", "보쌈"));
  menuMap.put("혼밥", Arrays.asList("컵밥", "우동", "편의점 도시락", "냉동피자", "햄버거"));
  menuMap.put("피곤", Arrays.asList("삼계탕", "설렁탕", "갈비탕", "추어탕", "전복죽"));
  menuMap.put("해장", Arrays.asList("해장국", "콩나물국밥", "순댓국", "라면", "짬뽕"));
  menuMap.put("기름진", Arrays.asList("피자", "치킨", "햄버거", "탕수육", "로제파스타"));
  menuMap.put("우울", Arrays.asList("초콜릿 케이크", "크림파스타", "치즈돈까스", "감자튀김", "단짠치킨"));
  menuMap.put("행복", Arrays.asList("초밥", "떡갈비", "스테이크", "카레라이스", "닭강정"));
  menuMap.put("간단한", Arrays.asList("김밥", "토스트", "샌드위치", "핫도그", "순대"));
  menuMap.put("담백한", Arrays.asList("샐러드", "쌀국수", "닭가슴살 도시락", "생선구이", "비빔밥"));
  menuMap.put("야식", Arrays.asList("족발", "치킨", "곱창", "라면", "떡튀순"));
  menuMap.put("브런치", Arrays.asList("프렌치토스트", "에그스크램블", "팬케이크", "샌드위치", "아보카도샐러드"));
  menuMap.put("데이트", Arrays.asList("파스타", "피자", "스테이크", "와플", "수플레 팬케이크"));

  // 2. 유사표현 → 표준 키워드 변환
  Map<String, String> synonymMap = new HashMap<>();
  synonymMap.put("맵다", "매운");
  synonymMap.put("짜증", "매운");
  synonymMap.put("화남", "매운");
  synonymMap.put("불타", "매운");
  synonymMap.put("속쓰림", "해장");
  synonymMap.put("속안좋음", "해장");
  synonymMap.put("느끼함", "기름진");
  synonymMap.put("기름져", "기름진");
  synonymMap.put("힘듦", "피곤");
  synonymMap.put("지침", "피곤");
  synonymMap.put("혼자", "혼밥");
  synonymMap.put("외로움", "혼밥");
  synonymMap.put("간단히", "간단한");
  synonymMap.put("깔끔", "담백한");
  synonymMap.put("심심해", "야식");

  List<String> results = null;
  String matchedKeyword = null;

  if (keyword != null && !keyword.isEmpty()) {
    // 3. 유사표현 → 정식 키워드 매핑
    if (synonymMap.containsKey(keyword)) {
      keyword = synonymMap.get(keyword);
    }

    // 4. 정확 일치 우선 검색
    if (menuMap.containsKey(keyword)) {
      results = menuMap.get(keyword);
      matchedKeyword = keyword;
    } else {
      // 5. 부분 일치 fallback 검색
      for (Map.Entry<String, List<String>> entry : menuMap.entrySet()) {
        if (entry.getKey().contains(keyword)) {
          results = entry.getValue();
          matchedKeyword = entry.getKey();
          break;
        }
      }
    }

    // 6. 출력
    if (results != null) {
%>
      <div class="alert alert-success text-center">
        '<strong><%= matchedKeyword %></strong>' 키워드에 어울리는 추천 메뉴입니다:
      </div>
      <ul class="list-group mb-4">
        <% for (String item : results) { %>
          <li class="list-group-item"><%= item %></li>
        <% } %>
      </ul>
<%
    } else {
%>
      <div class="alert alert-warning text-center">
        😢 죄송해요. '<strong><%= keyword %></strong>' 관련 추천 메뉴를 찾지 못했어요.
      </div>
<%
    }
  }
%>

  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
