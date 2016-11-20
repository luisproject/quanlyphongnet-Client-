package utils;

import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JButton;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

@SuppressWarnings("all")
public class JTableSpinnerRenderer implements TableCellRenderer{
	@Override
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
		// TODO Auto-generated method stub
        JSpinner spinner = new JSpinner();
        spinner.setPreferredSize(new Dimension(29, 24));
        return spinner;
	}
}
