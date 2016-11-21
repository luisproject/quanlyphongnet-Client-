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
	
	public FrService(int idm){
		initComponents();
		controller = new ControllerDichVu(tbMain1,idm,tbMain2);
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
        Content.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Danh sách dịch vụ ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(0, 153, 204))); // NOI18N

        Available.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "Hệ thống dịch vụ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(0, 153, 255))); // NOI18N
        Available.setPreferredSize(new java.awt.Dimension(462, 250));
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

        Using.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "Dịch vụ đã gọi", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(0, 153, 255))); // NOI18N
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

        javax.swing.GroupLayout ContentLayout = new javax.swing.GroupLayout(Content);
        Content.setLayout(ContentLayout);
        ContentLayout.setHorizontalGroup(
            ContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Available, javax.swing.GroupLayout.PREFERRED_SIZE, 779, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addComponent(Using, javax.swing.GroupLayout.PREFERRED_SIZE, 779, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        ContentLayout.setVerticalGroup(
            ContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ContentLayout.createSequentialGroup()
                .addComponent(Available, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(Using, javax.swing.GroupLayout.PREFERRED_SIZE, 313, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        getContentPane().add(Content, java.awt.BorderLayout.CENTER);

        pack();
	}
}
