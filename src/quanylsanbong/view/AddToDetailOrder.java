/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JDialog.java to edit this template
 */
package quanylsanbong.view;

import Clock.MyClock;
import Utils.CalendarHelper;
import javax.swing.JOptionPane;
import quanlysanbong.model.CT_PhieuThue;
import quanlysanbong.model.TrangThaiSan;

/**
 *
 * @author tranh
 */
public class AddToDetailOrder extends javax.swing.JDialog {

    private AdminGUI adminGui;
    private StaffGUI staffGui;
    private CalendarHelper cal;
    private MyClock clock;
    private String mapt;
    private TrangThaiSan orderItem;
    private String makhunggio;
    private int index;
    private String sTime, eTime;

    /**
     * Creates new form AddToDetailOrder
     */
    public AddToDetailOrder(java.awt.Frame parent, boolean modal, TrangThaiSan orderItem,
            String sTime, String eTime, String mapt, String makhunggio, int index) {
        super(parent, modal);
        initComponents();
        this.setLocationRelativeTo(null);
        
        
        if(parent.getClass().getName().equals("quanylsanbong.view.AdminGUI"))
            this.adminGui = (AdminGUI) parent;
        else if(parent.getClass().getName().equals("quanylsanbong.view.StaffGUI"))
            this.staffGui = (StaffGUI) parent;
        
        
        this.mapt = mapt;
        this.orderItem = orderItem;
        this.makhunggio = makhunggio;
        this.index = index;
        this.sTime = sTime;
        this.eTime = eTime;

        cal = new CalendarHelper();
        clock = new MyClock();

        staName.setText(orderItem.getTenSan());
        staPrice.setText(String.valueOf(orderItem.getPricePerHour()));

        String[] s = sTime.split("\\:");
        String sH = s[0], sM = s[1];

        String[] e = eTime.split("\\:");
        String eH = e[0], eM = e[1];

        sHourSpn.setValue(Integer.valueOf(sH));
        sMinuteSpn.setValue(Integer.valueOf(sM));
        eHourSpn.setValue(Integer.valueOf(eH));
        eMinuteSpn.setValue(Integer.valueOf(eM));

        orderDateLabel.setText(clock.getCurrentDate());
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        staName = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        staPrice = new javax.swing.JLabel();
        orderTimeWrong = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        sMinuteSpn = new javax.swing.JSpinner();
        jLabel1 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        eHourSpn = new javax.swing.JSpinner();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        eMinuteSpn = new javax.swing.JSpinner();
        sHourSpn = new javax.swing.JSpinner();
        jLabel5 = new javax.swing.JLabel();
        orderDateLabel = new javax.swing.JLabel();
        addDetailOrderBtn = new javax.swing.JButton();
        cancelOrderBtn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel3.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel3.setText("Name:");

        staName.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        staName.setText("stadium name");

        jLabel12.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel12.setText("Price/h:");

        staPrice.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        staPrice.setText("price/h");

        orderTimeWrong.setForeground(new java.awt.Color(255, 0, 51));
        orderTimeWrong.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        orderTimeWrong.setText(" ");

        jLabel8.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel8.setText("h");

        sMinuteSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 59, 1));

        jLabel1.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel1.setText("Come at:");

        jLabel9.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel9.setText("m");

        jLabel2.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel2.setText("Leave at:");

        eHourSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 23, 1));

        jLabel10.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel10.setText("h");

        jLabel11.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel11.setText("m");

        eMinuteSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 59, 1));

        sHourSpn.setModel(new javax.swing.SpinnerNumberModel(0, 0, 23, 1));

        jLabel5.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        jLabel5.setText("Date:");

        orderDateLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        orderDateLabel.setText("jLabel4");

        addDetailOrderBtn.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        addDetailOrderBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlysanbong/images/icons8-checked-radio-button-32.png"))); // NOI18N
        addDetailOrderBtn.setText("OK");
        addDetailOrderBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addDetailOrderBtnActionPerformed(evt);
            }
        });

        cancelOrderBtn.setFont(new java.awt.Font("Unispace", 0, 12)); // NOI18N
        cancelOrderBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/quanlysanbong/images/icons8-cancel-32.png"))); // NOI18N
        cancelOrderBtn.setText("Cancel");
        cancelOrderBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cancelOrderBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(95, 95, 95)
                        .addComponent(addDetailOrderBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(80, 80, 80)
                        .addComponent(cancelOrderBtn))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(58, 58, 58)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(9, 9, 9)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel12)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(staName, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(staPrice, javax.swing.GroupLayout.PREFERRED_SIZE, 228, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel1))
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
                                .addGap(28, 28, 28)
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(orderDateLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(orderTimeWrong, javax.swing.GroupLayout.PREFERRED_SIZE, 378, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(76, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(46, 46, 46)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(staName))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(staPrice)
                    .addComponent(jLabel12))
                .addGap(18, 18, 18)
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
                .addComponent(orderTimeWrong)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(orderDateLabel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 57, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(addDetailOrderBtn)
                    .addComponent(cancelOrderBtn))
                .addGap(53, 53, 53))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void addDetailOrderBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addDetailOrderBtnActionPerformed
        // TODO add your handling code here:
        int sHour = (int) sHourSpn.getValue();
        int sMinute = (int) sMinuteSpn.getValue();

        int eHour = (int) eHourSpn.getValue();
        int eMinute = (int) eMinuteSpn.getValue();

        String date = clock.getCurrentDate();
        
        String sTime = cal.formatHourAndMinute(sHour, sMinute);
        String eTime = cal.formatHourAndMinute(eHour, eMinute);

        String sDate = date + " " + sTime;
        String eDate = date + " " + eTime;

        boolean hopLe = true;

        if (!cal.isEndDateGtStartDate(sDate, eDate)) {
            orderTimeWrong.setText("Leave time must be larger than come time");
            hopLe = false;
        }
        
        if( !(cal.isEndTimeGtStartTime2(this.sTime, sTime) && cal.isEndTimeGtStartTime2(eTime, this.eTime)) ) {
            
            String msg = "Order time must be between "
                    + this.sTime + " and " + this.eTime + "\n\n"
                    + this.sTime + " <= " + "Come: " + sTime + " --> "
                    + "Leave: " + eTime + " <= " + this.eTime;
            JOptionPane.showMessageDialog(this, msg);
            hopLe = false;
        }

        if (hopLe) {
            
            float totalTime = cal.totalTime(sDate, eDate);
            
            CT_PhieuThue ctptItem = new CT_PhieuThue(this.mapt, orderItem.getMaSan(),
                    sDate, eDate, "", totalTime * orderItem.getPricePerHour(), this.makhunggio);
            
            if(adminGui != null)
                adminGui.addDetailOrder(ctptItem, index);
            else if (staffGui != null)
                staffGui.addDetailOrder(ctptItem, index);
            
            this.dispose();
        }
    }//GEN-LAST:event_addDetailOrderBtnActionPerformed

    private void cancelOrderBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cancelOrderBtnActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_cancelOrderBtnActionPerformed

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
//            java.util.logging.Logger.getLogger(AddToDetailOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(AddToDetailOrder.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//
//        /* Create and display the dialog */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                AddToDetailOrder dialog = new AddToDetailOrder(new javax.swing.JFrame(), true);
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
    private javax.swing.JButton addDetailOrderBtn;
    private javax.swing.JButton cancelOrderBtn;
    private javax.swing.JSpinner eHourSpn;
    private javax.swing.JSpinner eMinuteSpn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel orderDateLabel;
    private javax.swing.JLabel orderTimeWrong;
    private javax.swing.JSpinner sHourSpn;
    private javax.swing.JSpinner sMinuteSpn;
    private javax.swing.JLabel staName;
    private javax.swing.JLabel staPrice;
    // End of variables declaration//GEN-END:variables
}
