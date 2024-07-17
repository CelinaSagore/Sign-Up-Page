package colg.student.reg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;

public class getDetails {
    public static ResultSet getData() throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");

        String mysqlUrl="jdbc:mysql://localhost:3305/registation";
        Connection con= DriverManager.getConnection(mysqlUrl,"root","1234");
        Statement stmt =con.createStatement();
        String query= "SELECT * from info";
        ResultSet rs= stmt.executeQuery(query);
        return rs;
}
}