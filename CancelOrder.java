package bakeshopsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import UI.CancelOrderJFrame;
import UI.CancelPreOrderJFrame;

public class CancelOrder {
    private static final String url = "jdbc:mysql://localhost:3306/bakeshopsystem";
    private static final String user = "root";
    private static final String password = "";
    private Connection con;
    
    public CancelOrder() {
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
        }
    }

    public Connection getConnection() {
        return con;
    }
    
    public void searchOrderByID(CancelOrderJFrame cancelOrderFrame) {
        String orderID = cancelOrderFrame.getCancelOrderID();  
        String query = "SELECT ProductID, ProductName, Quantity, Price, TotalPrice FROM orders WHERE OrderID = ?";
        
        try {
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, orderID); 
            
            ResultSet rs = pst.executeQuery();
            cancelOrderFrame.getJTextAreaCancelOrder().setText("");
            
            if (rs.next()) {
                String orderDetails = "ProductID: " + rs.getString("ProductID") + "\n" +
                                      "ProductName: " + rs.getString("ProductName") + "\n" +
                                      "Quantity: " + rs.getInt("Quantity") + "\n" +
                                      "Price: " + rs.getDouble("Price") + "\n" +
                                      "TotalPrice: " + rs.getDouble("TotalPrice") + "\n";
                
                cancelOrderFrame.getJTextAreaCancelOrder().setText(orderDetails);
            } else {
                cancelOrderFrame.getJTextAreaCancelOrder().setText("Order not found.");
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
        }
    }
    
    public void cancelOrderByID(CancelOrderJFrame cancelOrderFrame) {
        String orderID = cancelOrderFrame.getCancelOrderID();

        if (orderID.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Please enter an Order ID.");
            return;
        }

        int confirm = JOptionPane.showConfirmDialog(null, 
                "Are you sure you want to cancel this order?", 
                "Cancel Order", JOptionPane.YES_NO_OPTION);

        if (confirm == JOptionPane.YES_OPTION) {
            String query = "UPDATE orders SET OrderStatus = 'cancelled' WHERE OrderID = ?";
            try (PreparedStatement pst = con.prepareStatement(query)) {
                pst.setString(1, orderID);
                int rowsUpdated = pst.executeUpdate();

                if (rowsUpdated > 0) {
                    JOptionPane.showMessageDialog(null, "Order has been successfully cancelled.");
                } else {
                    JOptionPane.showMessageDialog(null, "Order not found. Please check the Order ID.");
                }
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
            }
        }
    }


         public void searchPreOrderByID(CancelPreOrderJFrame cancelpreOrderFrame) {
        String orderID = cancelpreOrderFrame.getCancelPreOrderID();  
        String query = "SELECT ProductID, ProductName, Quantity, Price, TotalPrice FROM preorders WHERE PreOrderID = ?";
        
        try {
            PreparedStatement pst = con.prepareStatement(query);
            
            ResultSet rs = pst.executeQuery();
            
            cancelpreOrderFrame.getJTextAreaCancelPreOrder().setText("");
            
            if (rs.next()) {
                String orderDetails = "ProductID: " + rs.getString("ProductID") + "\n" +
                                      "ProductName: " + rs.getString("ProductName") + "\n" +
                                      "Quantity: " + rs.getInt("Quantity") + "\n" +
                                      "Price: " + rs.getDouble("Price") + "\n" +
                                      "TotalPrice: " + rs.getDouble("TotalPrice") + "\n";
                
                cancelpreOrderFrame.getJTextAreaCancelPreOrder().setText(orderDetails);
            } else {
                cancelpreOrderFrame.getJTextAreaCancelPreOrder().setText("Order not found.");
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
        }
    }
         public void cancelPreOrderByID(CancelPreOrderJFrame cancelpreOrderFrame) {
        String PreOrderID = cancelpreOrderFrame.getCancelPreOrderID();

        if (PreOrderID.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Please enter an Order ID.");
            return;
        }

        int confirm = JOptionPane.showConfirmDialog(null, 
                "Are you sure you want to cancel this order?", 
                "Cancel Order", JOptionPane.YES_NO_OPTION);

        if (confirm == JOptionPane.YES_OPTION) {
            String query = "UPDATE preorders SET Status = 'cancelled' WHERE PreOrderID = ?";
            try (PreparedStatement pst = con.prepareStatement(query)) {
                pst.setString(1, PreOrderID);
                int rowsUpdated = pst.executeUpdate();

                if (rowsUpdated > 0) {
                    JOptionPane.showMessageDialog(null, "Order has been successfully cancelled.");
                } else {
                    JOptionPane.showMessageDialog(null, "Order not found. Please check the Order ID.");
                }
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "Error: " + ex.getMessage());
            }
        }
    }

}
