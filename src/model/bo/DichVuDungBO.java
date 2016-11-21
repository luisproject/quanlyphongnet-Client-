package model.bo;

import java.util.ArrayList;

import model.bean.DichVuDung;
import model.dao.DichVuDungDAO;

@SuppressWarnings("all")
public class DichVuDungBO {
	public ArrayList<DichVuDung> getList() {
        return new DichVuDungDAO().getListAll();
    }
	
	public ArrayList<DichVuDung> getListItem(int idm){
		return new DichVuDungDAO().getListItem(idm);
	}

    public int addItem(DichVuDung obj) {
        return new DichVuDungDAO().addItem(obj);
    }

    public int delItem(int id) {
        return new DichVuDungDAO().delItem(id);
    }
}
