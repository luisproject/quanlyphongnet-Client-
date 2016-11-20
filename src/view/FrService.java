package view;

import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import controller.ControllerDichVu;
import model.bean.DichVu;

@SuppressWarnings("all")
public class FrService extends JFrame{
	private JPanel Content;
	private JPanel Available;
	private JScrollPane jScrollPane1;
	private JTable tbMain1;
	private JPanel Using;
	private JScrollPane jScrollPane2;
	private JTable tbMain2;
	private ControllerDichVu controller;
	
	public FrService(){
		initComponents();
		controller = new ControllerDichVu(tbMain1);
		controller.loadTable();
	}
	private void initComponents() {
		// TODO Auto-generated method stub
		Content = new JPanel();
        Available = new JPanel();
        jScrollPane1 = new JScrollPane();
        tbMain1 = new JTable();
        Using = new JPanel();
        jScrollPane2 = new JScrollPane();
        tbMain2 = new JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        Content.setBackground(new java.awt.Color(242, 242, 242));
        Content.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Danh sách dịch vụ ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(0, 153, 255))); // NOI18N
        Content.setLayout(new java.awt.BorderLayout());

        Available.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBorder(null);

        tbMain1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tbMain1);

        Available.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        Content.add(Available, java.awt.BorderLayout.PAGE_START);

        Using.setLayout(new java.awt.BorderLayout());

        jScrollPane2.setBorder(null);

        tbMain2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(tbMain2);

        Using.add(jScrollPane2, java.awt.BorderLayout.CENTER);

        Content.add(Using, java.awt.BorderLayout.CENTER);

        getContentPane().add(Content, java.awt.BorderLayout.CENTER);

        pack();
	}
	public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrService.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrService.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrService.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrService.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrService().setVisible(true);
            }
        });
    }
}
