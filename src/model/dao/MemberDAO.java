package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.bean.Member;
import utils.db.LibraryConnectDb;

@SuppressWarnings("all")
public class MemberDAO {
	
	private LibraryConnectDb lcdb;
    private Statement st;
    private PreparedStatement pst;
    private ResultSet rs;
    private Connection conn;
    private String table = "member";
    
    public MemberDAO(){
    	lcdb = new LibraryConnectDb();
    }
    
    public ArrayList<Member> getList(){
        ArrayList<Member> alItem = new ArrayList<>();
        String sql = "SELECT * FROM "+table;
        conn = lcdb.getConnectMySQL();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                alItem.add(new Member(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("payment")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                rs.close();
                st.close();
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return alItem;
    }
    
     public Member getItem(int id) {
        conn = lcdb.getConnectMySQL();
        Member c = null;
        String sql = "SELECT * FROM "+table+" WHERE id = ? LIMIT 1";
        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                c = new Member(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("payment"));
            }
        } catch (SQLException e) {
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
            }
        }
        return c;
    }
     
    public int addItem(Member item) {
        int result = 0;
        conn = lcdb.getConnectMySQL();

        String sql = "INSERT INTO "+table+"(username,password,payment,totaltime,playtime) VALUES (?,?,?)";
        try {
            pst = conn.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            pst.setString(1, item.getUsername());
            pst.setString(2, item.getPassword());
            pst.setString(3, item.getPayment());
            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
            if(rs.next()){
                result = rs.getInt(1);
            }
        } catch (SQLException e) {
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
            }
        }
        return result;
    }
    
    public int delItem(int id) {
        int result = 0;
        conn = lcdb.getConnectMySQL();

        String sql = "DELETE FROM "+table+" WHERE id = ? LIMIT 1";
        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            pst.executeUpdate();
            result = 1;
        } catch (SQLException e) {
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
            }
        }
        return result;
    }
	public Member getItemByUser(String tenDangNhap) {
		conn = lcdb.getConnectMySQL();
        Member c = null;
        String sql = "SELECT * FROM "+table+" WHERE username = ?";
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, tenDangNhap);
            rs = pst.executeQuery();
            if (rs.next()) {
                c = new Member(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("payment"));
            }
        } catch (SQLException e) {
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
            }
        }
        return c;
	}
}
