import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload_products")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5) 
public class upload_products extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        Part filePart = request.getPart("productImage");
        InputStream imageStream = filePart.getInputStream();

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sell?user=root&password=")) {
            String sql = "INSERT INTO products (name, description, price, image) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, productName);
                statement.setString(2, productDescription);
                statement.setDouble(3, productPrice);
                statement.setBlob(4, imageStream);
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            throw new ServletException("Database connection error", e);
        }

        response.sendRedirect("main.jsp");
    }
}
