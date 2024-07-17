<%@ page import="java.sql.*"%>
<%@ page import="colg.student.reg.getDetails"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <h2>Details</h2>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Gender</th>
            <th>City</th>
        </tr>
        <%
        ResultSet rs = null;
        try {
        rs = getDetails.getData();
        while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("password") %></td>
            <td><%= rs.getString("gender") %></td>
            <td><%= rs.getString("city") %></td>
        </tr>
        <%
        }
        } catch (Exception e) {
        e.printStackTrace();
        } finally {
        if (rs != null) {
        try {
        rs.close();
        } catch (SQLException e) {
        e.printStackTrace();
        }
        }
        }
        %>
    </table>
</div>
</body>
</html>