package model.bo;

import java.util.ArrayList;

import model.bean.Member;
import model.dao.MemberDAO;

public class MemberBO {
	public ArrayList<Member> getList() {
        return new MemberDAO().getList();
    }
	
	public Member getItem(int id){
		return new MemberDAO().getItem(id);
	}

    public int addItem(Member obj) {
        return new MemberDAO().addItem(obj);
    }

    public int delItem(int id) {
        return new MemberDAO().delItem(id);
    }

	public Member getItemByUser(String tenDangNhap) {
		return new MemberDAO().getItemByUser(tenDangNhap);
	}
}
