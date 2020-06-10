<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>

</head>
<body>
<h1>Displaying Meal List</h1>
<table border="1" width="500" align="center">
    <tr bgcolor="00FF7F">
        <th><b>Time</b></th>
        <th><b>Description</b></th>
        <th><b>Calories</b></th>
    </tr>

    <c:forEach items="${mealList}" var="m">
        <tr style="${m.excess==true ? 'color: #8b0000; ' : 'color:#006400; ' } ">
            <fmt:parseDate value="${ m.dateTime }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate"/>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                value="${ parsedDate}"/>
            </td>
            <td>${m.description}
            </td>
            <td>${m.calories}
            </td>
        </tr>
    </c:forEach>
</table>
<hr/>
</body>
</html>
