
package UI;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import UI.ProductJFrame;
import UI.CancelJFrame;

    public class TypeOfOrderJFrame extends javax.swing.JFrame {
        private String cartDetails;
        private String total;
        private PreOrderJFrame paymentFrame;
       

    public TypeOfOrderJFrame(String cartDetails, String total, PreOrderJFrame paymentFrame) {
        initComponents();
        this.cartDetails = cartDetails;
        this.total = total;
        this.paymentFrame = paymentFrame;
    
    }
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ORDERBTN = new javax.swing.JButton();
        PREORDERBTN = new javax.swing.JButton();
        CANCELORDERBTN = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        ORDERBTN.setText("Order");
        ORDERBTN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ORDERBTNActionPerformed(evt);
            }
        });

        PREORDERBTN.setText("Pre Order");
        PREORDERBTN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PREORDERBTNActionPerformed(evt);
            }
        });

        CANCELORDERBTN.setText("Cancel Order");
        CANCELORDERBTN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CANCELORDERBTNActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(218, 218, 218)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(ORDERBTN, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(PREORDERBTN, javax.swing.GroupLayout.DEFAULT_SIZE, 137, Short.MAX_VALUE)
                    .addComponent(CANCELORDERBTN, javax.swing.GroupLayout.DEFAULT_SIZE, 137, Short.MAX_VALUE))
                .addContainerGap(243, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(172, 172, 172)
                .addComponent(ORDERBTN, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(PREORDERBTN, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(CANCELORDERBTN, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(153, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void PREORDERBTNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PREORDERBTNActionPerformed
         ProductJFrame productFrame = new ProductJFrame();
         productFrame.setTypeOfOrder("PreOrder");
         productFrame.setVisible(true);
         this.dispose();
    }//GEN-LAST:event_PREORDERBTNActionPerformed

    private void ORDERBTNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ORDERBTNActionPerformed
        ProductJFrame productFrame = new ProductJFrame();
        productFrame.setTypeOfOrder("Order"); // Kapag Order ang pinili
        productFrame.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_ORDERBTNActionPerformed

    private void CANCELORDERBTNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CANCELORDERBTNActionPerformed
            CancelJFrame cancel = new CancelJFrame();
            cancel.setVisible(true);
    }//GEN-LAST:event_CANCELORDERBTNActionPerformed

   
    public static void main(String args[]) {
 
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
               
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton CANCELORDERBTN;
    private javax.swing.JButton ORDERBTN;
    private javax.swing.JButton PREORDERBTN;
    // End of variables declaration//GEN-END:variables
}
