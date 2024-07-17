package colg.student.reg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regForm")
public class Register extends HttpServlet {


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String myname = req.getParameter("name");
        String myemail = req.getParameter("email");
        String mypass = req.getParameter("password");
        String mygender = req.getParameter("gender");
        String mycity = req.getParameter("city");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");


            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/registation", "root", "1234");


            PreparedStatement ps = con.prepareStatement("INSERT INTO info (name, email, password, gender, city) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, myname);
            ps.setString(2, myemail);
            ps.setString(3, mypass);
            ps.setString(4, mygender);
            ps.setString(5, mycity);


            int count = ps.executeUpdate();



            if (count > 0) {
                resp.setContentType("text/html");
                out.print("<h3>User registered successfully</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
                rd.include(req, resp);
                out.print("<a href=index.jsp>Go to register page</a>");
            } else {
                out.print("<h3>User registration failed</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setContentType("text/html");
            out.print("<h3>User registration failed: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.include(req, resp);
        } finally {
            out.close();
        }
    }}