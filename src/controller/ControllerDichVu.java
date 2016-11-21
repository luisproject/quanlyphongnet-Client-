package controller;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.util.ArrayList;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.event.TableModelListener;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableCellRenderer;

import model.bean.DichVu;
import model.bo.DichVuBO;
import utils.JTableButtonMouseListener;
import utils.JTableButtonRenderer;
import utils.SpinnerEditor;

@SuppressWarnings("all")
public class ControllerDichVu extends AbstractTableModel{
	private JTable table;
    private DichVuBO model;
    private String[] cols = {
        "<html><center><p style='color:#00434a;font-weight:bold;'>STT</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Tên Dịch Vụ</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Đơn Giá</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Đơn Vị</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Lựa Chọn</p></center></html>"
    };
    private ArrayList<DichVu> alItem = new ArrayList<DichVu>();
    
    public ControllerDichVu(JTable table) {
    	this.table = table;
        model = new DichVuBO();
        alItem = model.getList();       
	}
    
	@Override
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return cols.length;
	}

	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return alItem.size();
	}

	@Override
	public String getColumnName(int column) {
		return cols[column];
	};
	
	@Override
	public Object getValueAt(int rowIndex, int columnIndex) {
		// TODO Auto-generated method stub
		DichVu Item = alItem.get(rowIndex);
        Object object = null;
        switch(columnIndex){
            case 0:
                object = Item.getId();
                break;
            case 1:
                object = Item.getTenDichVu();
                break;
            case 2:
                object = Item.getDonGia();
                break;
            case 3:
                object = Item.getDonVi();
                break;
            case 4: 
            	JButton button = new JButton();
            	button.setIcon(new ImageIcon(getClass().getResource("/images/tick.png"))); 
	            return button;
        }
        return object;
	}
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		// TODO Auto-generated method stub
		if(columnIndex == 0){
            return Integer.class;
        }else if(columnIndex == 2){
            return Integer.class;
        }else if(columnIndex == 4){
        	return JTextField.class;
        }else if(columnIndex == 5){
        	return JButton.class;
        }
		
		return super.getColumnClass(columnIndex);
	}
	public void loadTable(){
        
        this.table.setModel(this);
        this.table.setAutoCreateRowSorter(false);
        table.setFillsViewportHeight(true);     

        TableCellRenderer buttonRenderer = new JTableButtonRenderer();
        
        this.table.addMouseListener(new JTableButtonMouseListener(this.table));
        
        table.getTableHeader().setPreferredSize(new Dimension(0, 30));
        table.getTableHeader().setFont(new Font("Tahoma",Font.BOLD, 12));
        table.setRowHeight(26);
        table.setFont(new Font("Tahoma",Font.PLAIN, 12));
        
        table.getColumnModel().getColumn(0).setPreferredWidth(100);
        table.getColumnModel().getColumn(1).setPreferredWidth(100);
        table.getColumnModel().getColumn(2).setPreferredWidth(100);
        table.getColumnModel().getColumn(3).setPreferredWidth(100);
        
        table.getColumnModel().getColumn(4).setPreferredWidth(30);
        table.getColumnModel().getColumn(4).setCellRenderer(buttonRenderer);
    }
}
