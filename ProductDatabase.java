package bakeshopsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDatabase {
    
    public Product getProductByName(String productName) {
        Product product = null; 
        String query = "SELECT ProductID, ProductName, ProductPrice FROM products WHERE ProductName = ?";

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeshopsystem", "root", "");
             PreparedStatement pst = con.prepareStatement(query)) {

            pst.setString(1, productName);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                product = new Product(
                    rs.getInt("ProductID"),     
                    rs.getString("ProductName"), 
                    rs.getDouble("ProductPrice") 
                );
            }

            rs.close();
        } catch (SQLException e) {
            System.err.println("Error retrieving product: " + e.getMessage());
        }

        return product; 
    }
}