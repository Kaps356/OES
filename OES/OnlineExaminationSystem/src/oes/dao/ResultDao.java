package oes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import oes.db.Provider;
import oes.model.Result;

public class ResultDao {
	
	public static boolean insertResult(Result st) {
		
		boolean status = false;
		try {
			Connection con = Provider.getOracleConnection();
			String sql = "insert into resulttable values(?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, st.getUsername());
			pst.setString(2, st.getName());
			pst.setInt(3, st.getMarks());
			
			int val = pst.executeUpdate();
			
			if(val > 0) {
				status = true;
			}
			else {
				status = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
