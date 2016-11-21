package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.bean.Member;
import utils.db.LibraryConnectDb;

public class ValidateDbMember {
	public boolean isLogin(String tenDangNhap,String matKhau){
        boolean isExist = false;
        Member obj = new Member();
        Connection conn = new LibraryConnectDb().getConnectMySQL();
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM member WHERE username = ? AND password = ?");
            pst.setString(1, tenDangNhap);
            pst.setString(2, matKhau);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                obj = new Member(rs.getString("username"),rs.getString("password"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ValidateDbMember.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(obj != null){
            isExist = true;
        }
        return isExist;
    }
}
