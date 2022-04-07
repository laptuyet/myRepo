/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JDialog.java to edit this template
 */
package quanylsanbong.view;

import Clock.MyClock;
import Utils.CalendarHelper;
import Utils.FoodHelper;
import javax.swing.JOptionPane;
import quanlysanbong.model.CT_PhieuDat;
import quanlysanbong.model.TrangThaiSan;

/**
 *
 * @author tranh
 */
public class AddToDetailPreOrder extends javax.swing.JDialog {

    private TrangThaiSan preOrderItem;
    private CalendarHelper cal;
    private FoodHelper fh;
    private AdminGUI adminGui;
    private StaffGUI staffGui;
    private CustomerGUI customerGui;
    private String mapd;
    private int index;
    private MyClock clock;
    private String date, sTime, eTime;

    /**
     * Creates new form AddToDetailPreOrder
     */
    public AddToDetailPreOrder(java.awt.Frame parent, boolean modal,
            TrangThaiSan preOrderItem, String date, String sTime, String eTime, String mapd, int index) {
        super(parent, modal);
        initComponents();
        this.setLocationRelativeTo(null);

        cal = new CalendarHelper();
        fh = new FoodHelper();
        clock = new MyClock();

        staName.setText(preOrderItem.getTenSan());
        staPrice.setText(String.valueOf(preOrderItem.getPricePerHour()));

        preOrderDateLabel.setText(date);
        if(parent.getClass().getName().equals("quanylsanbong.view.AdminGUI"))
            this.adminGui = (AdminGUI) parent;
        else if(parent.getClass().getName().equals("quanylsanbong.view.StaffGUI"))
            this.staffGui = (StaffGUI) parent;
        else this.customerGui = (CustomerGUI) parent;
        
        this.preOrderItem = preOrderItem;
        this.mapd = mapd;
        this.index = index;
        this.date = date;
        this.sTime = sTime;
        this.eTime = eTime;

        String[] s = sTime.split("\\:");
        String sH = s[0], sM = s[1];

        String[] e = eTime.split("\\:");
        String eH = e[0], eM = e[1];

        sHourSpn.setValue(Integer.valueOf(sH));
        sMinuteSpn.setValue(Integer.valueOf(sM));
        eHourSpn.setValue(Integer.valueOf(eH));
        eMinuteSpn.setValue(Integer.valueOf(eM));

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        addDetailPreOrderBtn = new javax.swing.JButton();
        cancelPreOrderBtn = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        staName = new javax.swing.JLabel();
        staDeposit = new javax.swing.JTextField();
        sHourSpn = new javax.swing.JSpinner();
        jLabel8 = new javax.swing.JLabel();
        sMinuteSpn = new javax.swing.JSpinner();
        jLabel9 = new javax.swing.JLabel();
        eHourSpn = new javax.swing.JSpinner();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        eMinuteSpn = new javax.swing.JSpinner();
        staDepositWrong = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        staPrice = new javax.swing.JLabel();
        preOrderTimeWrong = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        preOrderDateLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 204));

        jLabel1.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel1.setText("Come at:");

        jLabel2.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel2.setText("Leave at:");

        addDetailPreOrderBtn.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        addDetailPreOrderBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlysanbong/images/icons8-checked-radio-button-32.png"))); // NOI18N
        addDetailPreOrderBtn.setText("OK");
        addDetailPreOrderBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addDetailPreOrderBtnActionPerformed(evt);
            }
        });

        cancelPreOrderBtn.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        cancelPreOrderBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlysanbong/images/icons8-cancel-32.png"))); // NOI18N
        cancelPreOrderBtn.setText("Cancel");
        cancelPreOrderBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cancelPreOrderBtnActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel3.setText("Name:");

        jLabel4.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel4.setText("Deposit:");

        staName.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        staName.setText("stadium name");

        staDeposit.setText("0");

        sHourSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 23, 1));

        jLabel8.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel8.setText("h");

        sMinuteSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 59, 1));

        jLabel9.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel9.setText("m");

        eHourSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 23, 1));

        jLabel10.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel10.setText("h");

        jLabel11.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel11.setText("m");

        eMinuteSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 59, 1));

        staDepositWrong.setForeground(new java.awt.Color(255, 0, 0));
        staDepositWrong.setText(" ");

        jLabel12.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel12.setText("Price/h:");

        staPrice.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        staPrice.setText("price/h");

        preOrderTimeWrong.setForeground(new java.awt.Color(255, 0, 51));
        preOrderTimeWrong.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        preOrderTimeWrong.setText(" ");

        jLabel5.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel5.setText("Date:");

        preOrderDateLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        preOrderDateLabel.setText(" ");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel12)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(staPrice, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(staName, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 210, Short.MAX_VALUE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(42, 42, 42)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(sHourSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(24, 24, 24)
                                        .addComponent(sMinuteSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(eHourSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(eMinuteSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(addDetailPreOrderBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(50, 50, 50)
                                .addComponent(cancelPreOrderBtn)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(staDepositWrong, javax.swing.GroupLayout.DEFAULT_SIZE, 90, Short.MAX_VALUE))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addGroup(layout.createSequentialGroup()
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(preOrderDateLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 207, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                    .addGap(33, 33, 33)
                                    .addComponent(staDeposit, javax.swing.GroupLayout.PREFERRED_SIZE, 207, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(43, 43, 43)
                        .addComponent(preOrderTimeWrong, javax.swing.GroupLayout.PREFERRED_SIZE, 414, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(35, 35, 35))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(39, 39, 39)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(staName))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(staPrice))
                .addGap(19, 19, 19)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(30, 30, 30)
                        .addComponent(jLabel2))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(sHourSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8)
                            .addComponent(sMinuteSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel9))
                        .addGap(23, 23, 23)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(eHourSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel10)
                            .addComponent(jLabel11)
                            .addComponent(eMinuteSpn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(preOrderTimeWrong)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(preOrderDateLabel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 18, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(staDeposit, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(38, 38, 38)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(staDepositWrong)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(addDetailPreOrderBtn)
                        .addComponent(cancelPreOrderBtn)))
                .addGap(74, 74, 74))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cancelPreOrderBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cancelPreOrderBtnActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_cancelPreOrderBtnActionPerformed

    private void addDetailPreOrderBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addDetailPreOrderBtnActionPerformed
        // TODO add your handling code here:
        int sHour = (int) sHourSpn.getValue();
        int sMinute = (int) sMinuteSpn.getValue();

        int eHour = (int) eHourSpn.getValue();
        int eMinute = (int) eMinuteSpn.getValue();
        
        String sTime = cal.formatHourAndMinute(sHour, sMinute);
        String eTime = cal.formatHourAndMinute(eHour, eMinute);

        String sDate = this.date + " " + sTime;
        String eDate = this.date + " " + eTime;

        boolean hopLe = true;

        if (!cal.isEndDateGtStartDate(sDate, eDate)) {
            preOrderTimeWrong.setText("Leave time must be larger than come time");
            hopLe = false;
        }

        double deposit = fh.formatMoney(staDeposit.getText());

        if (deposit == -9999) {
            staDepositWrong.setText("Deposit must be numbers");
            hopLe = false;
        }
        
        if( !(cal.isEndTimeGtStartTime2(this.sTime, sTime) && cal.isEndTimeGtStartTime2(eTime, this.eTime)) ) {
            
            String msg = "Pre-order time must be between "
                    + this.sTime + " and " + this.eTime + "\n\n"
                    + this.sTime + " <= " + "Come: " + sTime + " --> "
                    + "Leave: " + eTime + " <= " + this.eTime;
            JOptionPane.showMessageDialog(this, msg);
            hopLe = false;
        }

        if (hopLe) {
            CT_PhieuDat ctpdItem = new CT_PhieuDat(mapd, preOrderItem.getMaSan(), sDate, eDate, deposit);
            
            if(adminGui != null)
                adminGui.addDetailPreOrder(ctpdItem, index);
            else if (staffGui != null)
                staffGui.addDetailPreOrder(ctpdItem, index);
            // nho them customerGui vao
            this.dispose();

        }
    }//GEN-LAST:event_addDetailPreOrderBtnActionPerformed

    /**
     * @param args the command line arguments
     */
//    public static void main(String args[]) {
//        /* Set the Nimbus look and feel */
//        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
//        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
//         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
//         */
//        try {
//            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
//                if ("Nimbus".equals(info.getName())) {
//                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
//                    break;
//                }
//            }
//        } catch (ClassNotFoundException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailPreOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailPreOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailPreOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailPreOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//
//        /* Create and display the dialog */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                AddToDetailPreOrder dialog = new AddToDetailPreOrder(new javax.swing.JFrame(), true);
//                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
//                    @Override
//                    public void windowClosing(java.awt.event.WindowEvent e) {
//                        System.exit(0);
//                    }
//                });
//                dialog.setVisible(true);
//            }
//        });
//    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addDetailPreOrderBtn;
    private javax.swing.JButton cancelPreOrderBtn;
    private javax.swing.JSpinner eHourSpn;
    private javax.swing.JSpinner eMinuteSpn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel preOrderDateLabel;
    private javax.swing.JLabel preOrderTimeWrong;
    private javax.swing.JSpinner sHourSpn;
    private javax.swing.JSpinner sMinuteSpn;
    private javax.swing.JTextField staDeposit;
    private javax.swing.JLabel staDepositWrong;
    private javax.swing.JLabel staName;
    private javax.swing.JLabel staPrice;
    // End of variables declaration//GEN-END:variables
}
