package utils;

import java.awt.Component;

import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

@SuppressWarnings("all")
public class JTableButtonRenderer implements TableCellRenderer{

	@Override
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// TODO Auto-generated method stub
		JButton button = (JButton)value;
		button.setOpaque(false);
		button.setContentAreaFilled(false);
		button.setBorderPainted(false);
        return button;  
	}
	
}
