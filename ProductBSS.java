
package bakeshopsystem;

import UI.TypeOfOrderJFrame;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import UI.PreOrderJFrame;
import javax.swing.JTextArea;


public class ProductBSS {
    private PreOrderJFrame paymentFrame;
    
    public ProductBSS(PreOrderJFrame paymentFrame){
          this.paymentFrame = paymentFrame;
    }
    public String getCartDetails(javax.swing.JTextArea cartTextArea) {
        return cartTextArea.getText();
    }

    public double calculateTotal(javax.swing.JTextArea cartTextArea) {
        String orders = cartTextArea.getText(); 
        String[] lines = orders.split("\\n");
        double grandTotal = 0.0;

        for (String line : lines) {
            String[] parts = line.trim().split("\\s+"); 
            if (parts.length >= 5) { 
                try {
                    double totalPrice = Double.parseDouble(parts[4]); 
                    grandTotal += totalPrice;
                } catch (NumberFormatException e) {
                    javax.swing.JOptionPane.showMessageDialog(
                        null, 
                        "Error processing line: " + line, 
                        "Error", 
                        javax.swing.JOptionPane.ERROR_MESSAGE
                    );
                }
            }
        }

        return grandTotal;
    }
    
    public void clearLastItemInCart(JTextArea cartArea) {
        String cartContent = cartArea.getText();
        String[] lines = cartContent.split("\n");

        if (lines.length > 0) {
            StringBuilder updatedCart = new StringBuilder();
            for (int i = 0; i < lines.length - 1; i++) {
                updatedCart.append(lines[i]).append("\n");
            }

            cartArea.setText(updatedCart.toString());
        }
    }

  
}

