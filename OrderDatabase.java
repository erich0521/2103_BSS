package bakeshopsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;
import java.sql.Statement;

public class OrderDatabase {
    private static final String url = "jdbc:mysql://localhost:3306/bakeshopsystem";
    private static final String user = "root";
    private static final String password = "";
    private Connection con;
    
      public Connection getConnection() {
        return con;
    }
    
        public int getLatestOrderIDFromDatabase() {
         int latestOrderID = 0;
         try {
          
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeshopsystem", "root", "");
             String query = "SELECT MAX(OrderID) FROM orders"; 
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query);

             if (rs.next()) {
                 latestOrderID = rs.getInt(1); 
             }
             conn.close();
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return latestOrderID;
     }

     public void saveOrderDetails(String OrderDate, String PaymentMethod, String Mode, DefaultTableModel model) {
        String url = "jdbc:mysql://localhost:3306/bakeshopsystem"; 
        String user = "root"; 
        String password = ""; 

        String orderSQL = "INSERT INTO orders (OrderDate, ProductID, ProductName, Quantity, Price, TotalPrice, PaymentMethod, Mode, OrderStatus) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement orderStmt = conn.prepareStatement(orderSQL)) {
            for (int i = 0; i < model.getRowCount(); i++) {
                String ProductID = model.getValueAt(i, 0).toString();  
                String ProductName = model.getValueAt(i, 1).toString(); 
                int Quantity = Integer.parseInt(model.getValueAt(i, 2).toString()); 
                double Price = Double.parseDouble(model.getValueAt(i, 3).toString()); 
                double TotalPrice = Double.parseDouble(model.getValueAt(i, 4).toString()); 

                orderStmt.setString(1, OrderDate);          
                orderStmt.setString(2, ProductID);      
                orderStmt.setString(3, ProductName);      
                orderStmt.setInt(4, Quantity);                          
                orderStmt.setDouble(5, Price);        
                orderStmt.setDouble(6, TotalPrice);
                orderStmt.setString(7, PaymentMethod);
                orderStmt.setString(8, Mode);
                orderStmt.setString(9, "Pending");
                orderStmt.executeUpdate();
            }
          JOptionPane.showMessageDialog(null, "Order details saved successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
          JOptionPane.showMessageDialog(null, " Order Unsuccessful " + e.getMessage());
        }
        }
     
   public void loadOrdersToTable(JTable OrderTable) {
        DefaultTableModel model = (DefaultTableModel) OrderTable.getModel();
        model.setRowCount(0);

        String query = "SELECT OrderID, OrderDate, ProductID, ProductName, Quantity, Price, TotalPrice, Mode, PaymentMethod, OrderStatus FROM orders";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                model.addRow(new Object[] {
                    rs.getInt("OrderID"),
                    rs.getDate("OrderDate"),
                    rs.getString("ProductID"),
                    rs.getString("ProductName"),
                    rs.getInt("Quantity"),
                    rs.getDouble("Price"),
                    rs.getDouble("TotalPrice"),
                    rs.getString("Mode"),
                    rs.getString("PaymentMethod"),
                    rs.getString("OrderStatus")
                });
            }

        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error loading orders: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}