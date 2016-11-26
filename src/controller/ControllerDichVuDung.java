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

import model.bean.DichVuDung;
import model.bo.DichVuDungBO;
import utils.JTableButtonMouseListener;
import utils.JTableButtonRenderer;
import utils.SpinnerEditor;

@SuppressWarnings("all")
public class ControllerDichVuDung extends AbstractTableModel{
	private JTable table;
    private DichVuDungBO model;
    private String[] cols = {
        "<html><center><p style='color:#00434a;font-weight:bold;'>Tên Dịch Vụ</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Đơn Giá</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Số Lượng</p></center></html>",
        "<html><center><p style='color:#00434a;font-weight:bold;'>Trạng Thái</p></center></html>"
    };
    private ArrayList<DichVuDung> alItem = new ArrayList<DichVuDung>();
    
    public ControllerDichVuDung(JTable table,int idm) {
    	this.table = table;
        model = new DichVuDungBO();
        alItem = model.getListItem(idm);       
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
		DichVuDung Item = alItem.get(rowIndex);
        Object object = null;
        switch(columnIndex){
            case 0:
                object = Item.getTendichvu();
                break;
            case 1:
                object = Item.getDongia();
                break;
            case 2:
                object = Item.getSoluong();
                break;
            case 3:
            	object = Item.getTrangThai();
                break;
        }
        return object;
	}
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		// TODO Auto-generated method stub
		if(columnIndex == 0){
            return String.class;
        }else if(columnIndex == 1){
            return Integer.class;
        }else if(columnIndex == 2){
        	return Integer.class;
        }
		
		return super.getColumnClass(columnIndex);
	}
	public void loadTable(){
        
        this.table.setModel(this);
        this.table.setAutoCreateRowSorter(false);
        table.setFillsViewportHeight(true);     
        
        table.getTableHeader().setPreferredSize(new Dimension(0, 30));
        table.getTableHeader().setFont(new Font("Tahoma",Font.BOLD, 12));
        table.setRowHeight(26);
        table.setFont(new Font("Tahoma",Font.PLAIN, 12));
        
        table.getColumnModel().getColumn(0).setPreferredWidth(100);
        table.getColumnModel().getColumn(1).setPreferredWidth(100);
        table.getColumnModel().getColumn(2).setPreferredWidth(100);
        table.getColumnModel().getColumn(3).setPreferredWidth(100);
    }
}
