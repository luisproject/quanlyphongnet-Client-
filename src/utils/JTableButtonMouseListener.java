package utils;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;

import controller.ControllerDichVuDung;
import model.bean.DichVu;
import model.bean.DichVuDung;
import model.bo.DichVuBO;
import model.bo.DichVuDungBO;
import view.FrInitial;

@SuppressWarnings("all")
public class JTableButtonMouseListener extends MouseAdapter{
	
	private final JTable table;
	private final JTable table2;
	private int idm;
	private DichVuDungBO objectDV;
	private ControllerDichVuDung controller;
	
	public JTableButtonMouseListener(JTable table,int idm,JTable table2) {
        this.table = table;
        this.table2 = table2;
        this.idm = idm;
        objectDV = new DichVuDungBO();
        controller = new ControllerDichVuDung(table2, idm);
        controller.loadTable();
    }
	
	@Override
	public void mouseClicked(MouseEvent e) {
		int column = table.getColumnModel().getColumnIndexAtX(e.getX());
		int row    = e.getY()/table.getRowHeight(); 
	
		if (row < table.getRowCount() && row >= 0 && column < table.getColumnCount() && column >= 0) {
		 Object value = table.getValueAt(row, column);
		   if (value instanceof JButton) {
		     ((JButton)value).doClick();
		      DichVu dichVu = new DichVuBO().getItem(Integer.parseInt(table.getValueAt(row, 0).toString()));
		      try{
		    	  int soLuong = Integer.parseInt(JOptionPane.showInputDialog("Số lượng: "));
		    	  int result = objectDV.addItem(new DichVuDung(0, this.idm, dichVu.getTenDichVu(), dichVu.getDonGia(), soLuong,"Đang xử lý"));
		    	  if(result > 0){
		    		  JOptionPane.showConfirmDialog(new FrInitial(),"<html><p style=\"color:blue; font-weight:bold;\">Gửi yêu cầu của bạn thành công !</p></html>","Thông báo",JOptionPane.WARNING_MESSAGE);
		    		  controller.loadTable();
			    	  table2.revalidate();
		    	  }
		      }catch(NumberFormatException ex){
		    	  JOptionPane.showConfirmDialog(new FrInitial(),"<html><p style=\"color:red; font-weight:bold;\">Vui lòng nhập số !</p></html>","Thông báo",JOptionPane.WARNING_MESSAGE);
		      }
		   }
		}
	}
}
