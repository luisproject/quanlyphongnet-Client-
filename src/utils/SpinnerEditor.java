package utils;

import java.awt.Component;
import java.awt.event.MouseEvent;
import java.util.Arrays;
import java.util.EventObject;

import javax.swing.AbstractCellEditor;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.SpinnerListModel;
import javax.swing.table.TableCellEditor;

@SuppressWarnings("all")
public class SpinnerEditor extends AbstractCellEditor implements TableCellEditor{

	private final JSpinner spinner = new JSpinner();
	
	public SpinnerEditor(String[] items) {
	    spinner.setModel(new SpinnerListModel(Arrays.asList(items)));
	}

	@Override
	public Object getCellEditorValue() {
		// TODO Auto-generated method stub
		return spinner.getValue();
	}

	@Override
	public Component getTableCellEditorComponent(JTable tbMain, Object value, boolean isSelected, int row, int column) {
		// TODO Auto-generated method stub
		spinner.setValue(value);
	    return spinner;
	}
	
	@Override
	public boolean isCellEditable(EventObject evt) {
	    if (evt instanceof MouseEvent) {
	    	return ((MouseEvent) evt).getClickCount() >= 2;
	    }
	    return true;
	}
}
