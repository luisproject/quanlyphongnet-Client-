package view;

import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.WindowConstants;

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
		this.addWindowListener(new java.awt.event.WindowAdapter() {
		    @Override
		    public void windowClosing(java.awt.event.WindowEvent windowEvent) {
		    	setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
		    }
		});
		ImageIcon image = new ImageIcon(this.getClass().getResource("/images/iconService.png"));
        this.setIconImage(image.getImage());
	}
	private void initComponents() {
		// TODO Auto-generated method stub
		this.setResizable(false);
		Content = new javax.swing.JPanel();
        Available = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbMain1 = new javax.swing.JTable();
        Using = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbMain2 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        Content.setBackground(new java.awt.Color(242, 242, 242));
        Content.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Danh sách dịch vụ ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(0, 153, 255))); // NOI18N

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

        javax.swing.GroupLayout AvailableLayout = new javax.swing.GroupLayout(Available);
        Available.setLayout(AvailableLayout);
        AvailableLayout.setHorizontalGroup(
            AvailableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 788, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        AvailableLayout.setVerticalGroup(
            AvailableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

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

        javax.swing.GroupLayout UsingLayout = new javax.swing.GroupLayout(Using);
        Using.setLayout(UsingLayout);
        UsingLayout.setHorizontalGroup(
            UsingLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 788, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        UsingLayout.setVerticalGroup(
            UsingLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        javax.swing.GroupLayout ContentLayout = new javax.swing.GroupLayout(Content);
        Content.setLayout(ContentLayout);
        ContentLayout.setHorizontalGroup(
            ContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Available, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addComponent(Using, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        ContentLayout.setVerticalGroup(
            ContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ContentLayout.createSequentialGroup()
                .addComponent(Available, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(Using, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        getContentPane().add(Content, java.awt.BorderLayout.CENTER);

        pack();
	}
}
