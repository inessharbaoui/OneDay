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

@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
            if (validateLogin(email, password)) {
                response.sendRedirect("main.jsp");
            } else {
                response.sendRedirect("login.jsp?error=Invalid+credentials");
            }
        } else {
            response.sendRedirect("login.jsp?error=Email+and+password+are+required");
        }
    }

    private boolean validateLogin(String email, String password) {
        String url = "jdbc:mysql://localhost:3306/Sell";
        String username = "root";
        String dbPassword = "";

        try (Connection conn = DriverManager.getConnection(url, username, dbPassword)) {
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
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
