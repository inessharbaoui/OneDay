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

@WebServlet("/sell")
public class Sell extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemName = request.getParameter("itemName");
        String itemDescription = request.getParameter("itemDescription");
        double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
        String contact = request.getParameter("contact");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/sell";
            String username = username;
            String dbPassword = password;
            Connection connection = DriverManager.getConnection(url, username, dbPassword);

            String sql = "INSERT INTO requests (itemName, itemDescription, itemPrice, contact) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, itemName);
            statement.setString(2, itemDescription);
            statement.setDouble(3, itemPrice);
            statement.setString(4, contact);

            statement.executeUpdate();

            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("main.jsp");
    }
}
