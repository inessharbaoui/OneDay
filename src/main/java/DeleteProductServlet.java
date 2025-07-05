import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String URL = "jdbc:mysql://localhost:3306/sell";
    private static final String USER = username;
    private static final String PASSWORD = password; 

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("productId");
        deleteProduct(productId, response);
    }
    private void deleteProduct(String productId, HttpServletResponse response) throws IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);

            String deleteQuery = "DELETE FROM products WHERE id = ?";

            PreparedStatement statement = connection.prepareStatement(deleteQuery);

            statement.setString(1, productId);

            int rowsAffected = statement.executeUpdate();

            statement.close();
            connection.close();

            String successMessage = "Product with ID   purchased  successfully!"; 
            response.sendRedirect("main.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
