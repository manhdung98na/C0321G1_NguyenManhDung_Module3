<%@ page import="java.net.URL" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<head>
    <title>Simple Dictionary</title>
    <style>
        *{
            font-family: Arial,Helvetica,sans-serif;
        }
    </style>
</head>
<body>
<h2>Result</h2>
<%
    String input = request.getParameter("txtSearch");
    String result = "Không tìm thấy kết quả phù hợp";

    URL url = new URL("https://vdict.com/" + input + ",1,0,0.html");
    Scanner scanner = new Scanner(new InputStreamReader(url.openStream(), StandardCharsets.UTF_8));
    scanner.useDelimiter("\\Z");
    String content = scanner.next();
    // close scanner
    scanner.close();

    // regex
    Pattern p = Pattern.compile("class=\"list1\"><li><b>(.*?)</b>");
    Matcher m = p.matcher(content);
    //tạo queue để lưu trữ, tránh trùng lặp tin tức
    while (m.find()) {
        result = m.group(1);
        break;
    }
    System.out.println(result);
%>
Word: <%=input%><br>
Result: <%=result%><br>
<hr>
Translated by <i>https://vdict.com</i>
</body>
</html>