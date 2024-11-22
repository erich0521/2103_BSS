package bakeshopsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class PreOrderDatabase {
    private static final String url = "jdbc:mysql://localhost:3306/bakeshopsystem"; 
    private static final String user = "root"; 
    private static final String password = ""; 
   
        public int getLatestPreOrderIDFromDatabase() {
         int latestpreOrderID = 0;
         try {
          
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeshopsystem", "root", "");
             String query = "SELECT MAX(PreOrderID) FROM preorders"; 
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query);

             if (rs.next()) {
                 latestpreOrderID = rs.getInt(1); 
             }
             conn.close();
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return latestpreOrderID;
     }

    public void savePreOrderDetails(String PreOrderDate, String PickUpDate, String CustomerName,
              String PhoneNumber,   DefaultTableModel model, String PaymentMethod,  String Mode, String Status) {
        
        String preorderSQL = "INSERT INTO preorders (PreOrderDate, PickUpDate, CustomerName, PhoneNumber, ProductID, ProductName, "
                + "Quantity, Price, TotalPrice, PaymentMethod, Mode, Status) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement preorderStmt = conn.prepareStatement(preorderSQL)) {

            for (int i = 0; i < model.getRowCount(); i++) {
                int ProductID = Integer.parseInt(model.getValueAt(i, 0).toString()); 
                String ProductName = model.getValueAt(i, 1).toString();              
                int Quantity = Integer.parseInt(model.getValueAt(i, 2).toString());  
                double Price = Double.parseDouble(model.getValueAt(i, 3).toString()); 
                double TotalPrice = Double.parseDouble(model.getValueAt(i, 4).toString()); 

              
                preorderStmt.setString(1, PreOrderDate);           
                preorderStmt.setString(2, PickUpDate);              
                preorderStmt.setString(3, CustomerName);                           
                preorderStmt.setString(4, PhoneNumber);                
                preorderStmt.setInt(5, ProductID);                   
                preorderStmt.setString(6, ProductName);            
                preorderStmt.setInt(7, Quantity);         
                preorderStmt.setDouble(8, Price);               
                preorderStmt.setDouble(9, TotalPrice);             
                preorderStmt.setString(10, PaymentMethod);            
                preorderStmt.setString(11, Mode);               
                preorderStmt.setString(12, "Pending");           
                preorderStmt.executeUpdate();
            }

            JOptionPane.showMessageDialog(null, "Preorder details saved successfully!");

        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Preorder Unsuccessful: " + e.getMessage());
        }
    }
    
     public void loadPreOrdersToTable(JTable PreOrderTable) {
        DefaultTableModel model = (DefaultTableModel) PreOrderTable.getModel();
        model.setRowCount(0);

        String query = "SELECT PreOrderID, PreOrderDate, PickUpDate, CustomerName, PhoneNumber, ProductID, ProductName, Quantity, Price, TotalPrice, PaymentMethod, Mode, Status FROM preorders";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                model.addRow(new Object[] {
                    rs.getInt("PreOrderID"),
                    rs.getString("PreOrderDate"),
                    rs.getString("PickUpDate"),
                    rs.getString("CustomerName"),
                    rs.getString("PhoneNumber"),
                    rs.getInt("ProductID"),
                    rs.getString("ProductName"),
                    rs.getInt("Quantity"),
                    rs.getDouble("Price"),
                    rs.getDouble("TotalPrice"),
                    rs.getString("PaymentMethod"),
                    rs.getString("Mode"),
                    rs.getString("Status")
                });
            }

        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error loading orders: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}
