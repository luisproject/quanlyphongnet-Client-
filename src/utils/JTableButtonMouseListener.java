package utils;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;

import model.bean.DichVu;
import model.bo.DichVuBO;

@SuppressWarnings("all")
public class JTableButtonMouseListener extends MouseAdapter{
	
	private final JTable table;
	
	public JTableButtonMouseListener(JTable table) {
        this.table = table;
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
		      String input = JOptionPane.showInputDialog("Số lượng: ");
		   }
		}
	}
}
