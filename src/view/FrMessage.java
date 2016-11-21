package view;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.MouseEvent;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JSpinner;
import javax.swing.JTextField;
import javax.swing.WindowConstants;

import model.bo.MayBO;
import model.bo.PhienNguoiDungBO;
import utils.LibraryString;
import utils.Panel;

@SuppressWarnings("all")
public class FrMessage extends JFrame{
	/**
	 * Create the panel.
	 */
	private JPanel Top;
	private JPanel jPanel1;
	private JLabel jLabel8;
	
	private JPanel jPanel2;
	private JLabel jLabel1;
	private JLabel jLabel9;
	private JLabel jLabel10;
	
	private Panel Center;
	private JLabel jLabel2;
	private JLabel jLabel3;
	private JLabel jLabel4;
	private JLabel jLabel5;
	private JComboBox<String> jComboBox1;
	private JSpinner jSpinner1;
	private JSpinner jSpinner2;
	private JSpinner jSpinner3;
	private JLabel jLabel7;
	private JTextField jTextField1;
	
	private JPanel jPanel3;
	private JButton jButton1;
	private JButton jButton2;
	private JButton jButton3;
	private JButton jButton4;
	
	private JPanel Last;
	private JLabel jLabel6;
	private PhienNguoiDungBO phienNguoiDungBO;
	private int idm;
	
	public FrMessage(int idm) {
		initComponents();
		phienNguoiDungBO = new PhienNguoiDungBO();
		this.idm = idm;
		initTime();
	}

	private void initTime() {
		// TODO Auto-generated method stub
		jSpinner1.setValue(LibraryString.convertToTime(86399));
		
		Thread clock = new Thread(){
			@Override
			public void run(){
				while(true){
					Date thoiGianStart = new Date(phienNguoiDungBO.getItemCom(idm).getThoiGianBatDau().getTime());
					Date thoiGianPlay = LibraryString.convertToTime(Math.abs(new Date().getTime() - thoiGianStart.getTime())/1000);
					jSpinner2.setValue(thoiGianPlay);
					jSpinner3.setValue(LibraryString.convertToTime(86399 - thoiGianPlay.getTime()/1000));
					
					String money = LibraryString.operMoney(thoiGianPlay, new MayBO().getItem(idm).getDonGia())+"";
					if(Integer.parseInt(money) > 1000){
						jTextField1.setText(LibraryString.changeCurrencyVND(money)+" VND");
					}else{
						jTextField1.setText("1.000 VND");
					}
					
					try {
						sleep(1000);
					} catch (InterruptedException e) {
						System.out.print(e.getMessage());
					}
				}
			}
		};
		clock.start();
	}

	private void initComponents() {
		// TODO Auto-generated method stub
		Top = new JPanel();
        jPanel1 = new JPanel();
        jLabel8 = new JLabel();
        jPanel2 = new JPanel();
        jLabel1 = new JLabel();
        jLabel9 = new JLabel();
        jLabel10 = new JLabel();
        Center = new Panel();
        jLabel2 = new JLabel();
        jLabel3 = new JLabel();
        jLabel4 = new JLabel();
        jLabel5 = new JLabel();
        jComboBox1 = new JComboBox<>();
        jSpinner1 = new JSpinner();
        jSpinner2 = new JSpinner();
        jSpinner3 = new JSpinner();
        jLabel7 = new JLabel();
        jTextField1 = new JTextField();
        jPanel3 = new JPanel();
        jButton1 = new JButton();
        jButton3 = new JButton();
        jButton2 = new JButton();
        jButton4 = new JButton();
        Last = new JPanel();
        jLabel6 = new JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(242, 242, 242));
        setMinimumSize(new java.awt.Dimension(290, 470));
        setUndecorated(true);

        Top.setBackground(new java.awt.Color(51, 51, 51));
        Top.setLayout(new java.awt.GridLayout(1, 2));

        jPanel1.setBackground(new java.awt.Color(51, 51, 51));
        jPanel1.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("ADMIN");
        jPanel1.add(jLabel8);

        Top.add(jPanel1);

        jPanel2.setBackground(new java.awt.Color(51, 51, 51));
        jPanel2.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(51, 204, 0));
        jLabel1.setText("Đã kết nối");
        jPanel2.add(jLabel1);

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(51, 204, 0));
        jLabel9.setText("•");
        jPanel2.add(jLabel9);

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 255, 255));
        jLabel10.setText("X");
        jLabel10.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jLabel10MousePressed(evt);
            }
        });
        jPanel2.add(jLabel10);

        Top.add(jPanel2);

        Center.setBackground(new java.awt.Color(242, 242, 242));
        Center.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(242, 242, 242)), "Thông tin tính tiền của máy ", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(51, 153, 255))); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(51, 102, 255));
        jLabel2.setText("Ngôn ngữ:");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(51, 102, 255));
        jLabel3.setText("Tổng thời gian:");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(51, 102, 255));
        jLabel4.setText("Thời gian sử dụng:");

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(51, 102, 255));
        jLabel5.setText("Thời gian còn lại:");

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tiếng Việt", "Tiếng Anh" }));
        jComboBox1.setPreferredSize(new java.awt.Dimension(56, 24));

        jSpinner1.setModel(new javax.swing.SpinnerDateModel());
        jSpinner1.setDoubleBuffered(true);
        jSpinner1.setEditor(new javax.swing.JSpinner.DateEditor(jSpinner1, "HH:mm:ss"));
        jSpinner1.setEnabled(false);
        jSpinner1.setPreferredSize(new java.awt.Dimension(29, 24));

        jSpinner2.setModel(new javax.swing.SpinnerDateModel());
        jSpinner2.setDoubleBuffered(true);
        jSpinner2.setEditor(new javax.swing.JSpinner.DateEditor(jSpinner2, "HH:mm:ss"));
        jSpinner2.setEnabled(false);
        jSpinner2.setPreferredSize(new java.awt.Dimension(29, 24));

        jSpinner3.setModel(new javax.swing.SpinnerDateModel());
        jSpinner3.setDoubleBuffered(true);
        jSpinner3.setEditor(new javax.swing.JSpinner.DateEditor(jSpinner3, "HH:mm:ss"));
        jSpinner3.setEnabled(false);
        jSpinner3.setPreferredSize(new java.awt.Dimension(29, 24));

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(51, 102, 255));
        jLabel7.setText("Phí dịch vụ:");

        jTextField1.setPreferredSize(new java.awt.Dimension(59, 24));

        jPanel3.setLayout(new java.awt.GridLayout(2, 2));

        jButton1.setBackground(new java.awt.Color(242, 242, 242));
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/mail.png"))); // NOI18N
        jButton1.setText("Thông báo");
        jPanel3.add(jButton1);
        jButton1.getAccessibleContext().setAccessibleName("html/text\n");

        jButton3.setBackground(new java.awt.Color(242, 242, 242));
        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/iservice.png"))); // NOI18N
        jButton3.setText("Dịch vụ");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton3);

        jButton2.setBackground(new java.awt.Color(242, 242, 242));
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/logout.png"))); // NOI18N
        jButton2.setText("Đăng xuất");
        jPanel3.add(jButton2);

        jButton4.setBackground(new java.awt.Color(242, 242, 242));
        jButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/iPassword.png"))); // NOI18N
        jButton4.setText("Mật khẩu");
        jPanel3.add(jButton4);

        javax.swing.GroupLayout CenterLayout = new javax.swing.GroupLayout(Center);
        Center.setLayout(CenterLayout);
        CenterLayout.setHorizontalGroup(
            CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(CenterLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5)
                    .addComponent(jLabel7))
                .addGap(7, 7, 7)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jComboBox1, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jSpinner1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jSpinner2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jSpinner3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
            .addGroup(CenterLayout.createSequentialGroup()
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 280, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        CenterLayout.setVerticalGroup(
            CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(CenterLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jSpinner1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jSpinner2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jSpinner3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(8, 8, 8)
                .addGroup(CenterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 12, Short.MAX_VALUE))
        );

        Last.setBackground(new java.awt.Color(196, 205, 224));

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/banner.gif"))); // NOI18N
        Last.add(jLabel6);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Top, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addComponent(Center, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addComponent(Last, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(Top, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(Center, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(Last, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
	}

	protected void jLabel10MousePressed(MouseEvent evt) {
		// TODO Auto-generated method stub
		setState(FrMessage.ICONIFIED);
	}

	protected void jButton3ActionPerformed(ActionEvent evt) {
		// TODO Auto-generated method stub
		FrService fr = new FrService(idm);
		fr.setVisible(true);
		
		Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
		fr.setLocation(dim.width/2-fr.getSize().width/2, dim.height/2-fr.getSize().height/2);
	}
}
