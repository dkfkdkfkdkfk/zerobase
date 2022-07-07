
<%@ page import="com.zerobase.OpenApiManager"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zerobase mission1</title>
    <style>
        h1 {
            margin-top: 30px;
        }
    </style>
</head>
<body>

<%
    OpenApiManager apiManager = new OpenApiManager();
    int wifiCount = apiManager.getInfoSize();
    apiManager.saveToSqlAllData();
    out.println("<h1 align=\"center\">" + Integer.toString(wifiCount) + "개의 WIFI 정보를 정상적으로 저장하였습니다.</h1>");
    out.println("<div align=\"center\"><a href=\"index.jsp\">홈으로 가기</a></div>");
%>

</body>
</html>
