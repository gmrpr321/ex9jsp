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

<% // Set up the database connection String url =
"jdbc:mysql://localhost:3306/mydatabase"; String user = "username"; String
password = "password"; Connection conn = DriverManager.getConnection(url, user,
password); // Get the total number of students Statement stmt =
conn.createStatement(); ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS
total FROM students"); rs.next(); int totalStudents = rs.getInt("total"); // Get
the average age of all students rs = stmt.executeQuery("SELECT AVG(age) AS
average FROM students"); rs.next(); double avgAge = rs.getDouble("average"); //
Get the department with the highest number of students rs =
stmt.executeQuery("SELECT department, COUNT(*) AS count FROM students GROUP BY
department ORDER BY count DESC LIMIT 1"); rs.next(); String department =
rs.getString("department"); // Close the database connection conn.close(); %>
