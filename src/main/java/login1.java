import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login1")
public class login1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public login1() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
            if (validateLogin(email, password)) {
                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("login1.jsp?error=Invalid+credentials");
            }
        } else {
            response.sendRedirect("login1.jsp?error=Email+and+password+are+required");
        }
    }

    private boolean validateLogin(String email, String password) {
        String url = "jdbc:mysql://localhost:3306/Sell";
        String username = username;
        String dbPassword =password;

        try (Connection conn = DriverManager.getConnection(url, username, dbPassword)) {
            String sql = "SELECT * FROM admin WHERE email = ? AND password = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next(); 
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
