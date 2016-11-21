package view;

import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import model.bean.May;
import model.bo.MayBO;
import utils.ListAddress;

@SuppressWarnings("all")
public class FrInitial extends JFrame{
	private JLabel jLabel1;
	private MayBO objectBO;
	public FrInitial(){
		this.setUndecorated(true);
		initComponents();
		objectBO = new MayBO();
	}
	private void initComponents() {
		// TODO Auto-generated method stub
		jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/welcome.gif"))); // NOI18N
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jLabel1MousePressed(evt);
            }
        });
        
        getContentPane().add(jLabel1, java.awt.BorderLayout.CENTER);

        pack();
	}
	protected void jLabel1MousePressed(MouseEvent evt) {
		May objMay = objectBO.getItemAddress(ListAddress.getMacAddress());
		if(objMay!=null){
			if(objMay.getTrangThai()){
		        openFrMessage(objMay.getIdm());
			}else{
				FrLogin frLogin = new FrLogin(this,objMay.getIdm());
				frLogin.setVisible(true);
			}
		}else{
			JOptionPane.showConfirmDialog(new FrInitial(),"<html><p style=\"color:red; font-weight:bold;\">Bạn chưa cấu hình địa chỉ mac cho máy!</p></html>","Thông báo",JOptionPane.WARNING_MESSAGE);
		}
	}
	private void openFrMessage(int idm) {
		// TODO Auto-generated method stub
		FrMessage fr = new FrMessage(idm);
		GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
        GraphicsDevice defaultScreen = ge.getDefaultScreenDevice();
        Rectangle rect = defaultScreen.getDefaultConfiguration().getBounds();
        int x = (int) rect.getMaxX() - fr.getWidth();
        int y = 0;
        fr.setLocation(x, y);
        fr.setVisible(true);
        this.dispose();
	}
	public static void main(String args[]) {
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrInitial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrInitial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrInitial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrInitial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
      //</editor-fold>
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FrInitial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FrInitial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FrInitial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (UnsupportedLookAndFeelException ex) {
            Logger.getLogger(FrInitial.class.getName()).log(Level.SEVERE, null, ex);
        }
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrInitial().setVisible(true);
            }
        });
    }
}
