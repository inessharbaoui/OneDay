import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet("/deleteItem")
 

public class DeleteItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selectedID = request.getParameter("id");

        String dbURL = "jdbc:mysql://localhost:3306/sell";
        String username = "root";
        String password = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, username, password);
            PreparedStatement statement = conn.prepareStatement("DELETE FROM products WHERE id = ?");
            statement.setString(1, selectedID);
            int rowsAffected = statement.executeUpdate();
            statement.close();
            conn.close();

            response.getWriter().println("Item deleted successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error deleting item: " + e.getMessage());
        }
    }
}
