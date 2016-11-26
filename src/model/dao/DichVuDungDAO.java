package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.bean.DichVuDung;
import utils.db.LibraryConnectDb;

@SuppressWarnings("all")
public class DichVuDungDAO {
	private LibraryConnectDb lcdb;
    private Statement st;
    private PreparedStatement pst;
    private ResultSet rs;
    private Connection conn;
    private String table = "dichvudung";
    public DichVuDungDAO(){
    	lcdb = new LibraryConnectDb();
    }
    public ArrayList<DichVuDung> getListAll(){
        ArrayList<DichVuDung> alItem = new ArrayList<>();
        String sql = "SELECT * FROM "+table;
        conn = lcdb.getConnectMySQL();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                alItem.add(new DichVuDung(rs.getInt("id"), rs.getInt("idm"), rs.getString("tendichvu"), rs.getInt("dongia"), rs.getInt("soluong"),rs.getString("trangthai")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DichVuDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                rs.close();
                st.close();
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DichVuDungDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return alItem;
    }
    
     public ArrayList<DichVuDung> getListItem(int idm) {
        ArrayList<DichVuDung> alItem = new ArrayList<>();
        String sql = "SELECT * FROM "+table+" WHERE idm=?";
        conn = lcdb.getConnectMySQL();
        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, idm);
            rs = pst.executeQuery();
            while (rs.next()) {
            	alItem.add(new DichVuDung(rs.getInt("id"), rs.getInt("idm"), rs.getString("tendichvu"), rs.getInt("dongia"), rs.getInt("soluong"),rs.getString("trangthai")));
            }
        } catch (SQLException e) {
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
            }
        }
        return alItem;
    }
     
    public int addItem(DichVuDung item) {
        int result = 0;
        conn = lcdb.getConnectMySQL();

        String sql = "INSERT INTO "+table+"(idm,tendichvu,dongia,soluong,trangthai) VALUES (?,?,?,?,?)";
        try {
            pst = conn.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            pst.setInt(1, item.getIdm());
            pst.setString(2, item.getTendichvu());
            pst.setInt(3, item.getDongia());
            pst.setInt(4, item.getSoluong());
            pst.setString(5, item.getTrangThai());
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
    
    public int delItem(int cid) {
        int result = 0;
        conn = lcdb.getConnectMySQL();

        String sql = "DELETE FROM "+table+" WHERE id = ? LIMIT 1";
        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, cid);
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
}
