import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public register() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repeatPassword = request.getParameter("repeat_password");

        if (fullName != null && !fullName.isEmpty() && email != null && !email.isEmpty() &&
            password != null && !password.isEmpty() && repeatPassword != null && !repeatPassword.isEmpty()) {
            if (password.equals(repeatPassword)) {
                if (insertUser(fullName, email, password)) {
                    response.sendRedirect("main.jsp");
                    return;
                } else {
                    sendErrorRedirect(response, "Database+error%21");
                    return;
                }
            } else {
                sendErrorRedirect(response, "Passwords+don%27t+match");
                return;
            }
        } else {
            sendErrorRedirect(response, "Verify+your+information%21");
            return;
        }
    }

    private void sendErrorRedirect(HttpServletResponse response, String message) throws IOException {
        response.sendRedirect("register.jsp?error=" + message);
    }

    private boolean insertUser(String fullName, String email, String password) {
        String url = "jdbc:mysql://localhost:3306/Sell";
        String username = username;
        String dbPassword = password;

        try (Connection conn = DriverManager.getConnection(url, username, dbPassword)) {
            String sql = "INSERT INTO users (full_name, email, password) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fullName);
            statement.setString(2, email);
            statement.setString(3, password);
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
