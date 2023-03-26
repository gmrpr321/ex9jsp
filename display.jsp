<%@page import="java.sql.*" %>
<html>
  <head>
    <title>Student Information</title>
  </head>
  <body>
    <h1>Student Information</h1>
    <table>
      <tr>
        <th>Total Number of Students</th>
        <td><%= totalStudents %></td>
      </tr>
      <tr>
        <th>Average Age of Students</th>
        <td><%= avgAge %></td>
      </tr>
      <tr>
        <th>Department with Most Students</th>
        <td><%= department %></td>
      </tr>
    </table>
  </body>
</html>
