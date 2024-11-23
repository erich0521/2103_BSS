
package UI;
import DatabaseConnection.Database;
import java.sql.Connection;
import javax.swing.JOptionPane;

public class RoleJFrame extends javax.swing.JFrame {

    public RoleJFrame() {
        initComponents();
    }

  
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        AdminBTN = new javax.swing.JButton();
        customerBTN = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setMaximumSize(new java.awt.Dimension(574, 300));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setLayout(null);

        AdminBTN.setText("ADMIN");
        AdminBTN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AdminBTNActionPerformed(evt);
            }
        });
        jPanel2.add(AdminBTN);
        AdminBTN.setBounds(180, 120, 110, 23);

        customerBTN.setText("CUSTOMER");
        customerBTN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                customerBTNActionPerformed(evt);
            }
        });
        jPanel2.add(customerBTN);
        customerBTN.setBounds(180, 170, 110, 23);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/ss.jpg"))); // NOI18N
        jPanel2.add(jLabel2);
        jLabel2.setBounds(-30, 0, 500, 320);

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 470, 320));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void AdminBTNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AdminBTNActionPerformed
         Connection connection = Database.getConnection();
         AdminLoginFrame admin = new AdminLoginFrame(connection);
        admin.setVisible(true);
        this.dispose();
        
    }//GEN-LAST:event_AdminBTNActionPerformed

    private void customerBTNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_customerBTNActionPerformed
       String cartDetails = "";  // Replace with actual cart details
        String total = "";  // Replace with actual total value

        // Create an instance of PreOrderJFrame (if needed)
        PreOrderJFrame paymentFrame = new PreOrderJFrame(cartDetails, total);

        // Create an instance of TypeOfOrderJFrame and pass the necessary arguments
        TypeOfOrderJFrame typeOfOrderFrame = new TypeOfOrderJFrame(cartDetails, total, paymentFrame);

        // Set the frame visibility to true to display it
        typeOfOrderFrame.setVisible(true);


    }//GEN-LAST:event_customerBTNActionPerformed

    public static void main(String args[]) {
      
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RoleJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton AdminBTN;
    private javax.swing.JButton customerBTN;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
}
