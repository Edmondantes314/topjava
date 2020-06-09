<%@page import="ru.javawebinar.topjava.model.MealTo" %>
<%@page import="java.util.ArrayList" %>
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
    <%
        ArrayList<MealTo> meals =
                (ArrayList<MealTo>) request.getAttribute("mealList");
        for (MealTo m : meals) {
    %>

    <tr>
        <td><%=m.getDateTime()%>
        </td>
        <td><%=m.getDescription()%>
        </td>
        <td><%=m.getCalories()%>
        </td>
    </tr>
    <%}%>
</table>
<hr/>
</body>
</html>
