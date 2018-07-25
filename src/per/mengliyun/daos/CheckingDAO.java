package per.mengliyun.daos;
import per.mengliyun.entitys.Checking;
import java.sql.*;
import java.util.*;


public class CheckingDAO implements ICheckingDAO{

	private PreparedStatement pstmt;
	private ResultSet rs;
	public boolean insert(Checking checking,Connection conn) throws Exception{
		String sql="insert into checking(name,sex,classId,date,score,phone) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,checking.getName());		pstmt.setString(2,checking.getSex());		pstmt.setString(3,checking.getClassId());		pstmt.setString(4,checking.getDate());		pstmt.setInt(5,checking.getScore());		pstmt.setString(6,checking.getPhone());		if(pstmt.executeUpdate()>0){
			this.close();
			return true;
		}else{
			this.close();
			return false;
		}
	}
	public boolean delete(int id,Connection conn) throws Exception{
		String sql = "delete from checking where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,id);
		if(pstmt.executeUpdate()>0){
			this.close();
			return true;
		}else{
			this.close();
			return false;
		}
	}
	public boolean update(Checking checking,Connection conn) throws Exception{;
		String sql="update checking set name=?,sex=?,classId=?,date=?,score=?,phone=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,checking.getName());		pstmt.setString(2,checking.getSex());		pstmt.setString(3,checking.getClassId());		pstmt.setString(4,checking.getDate());		pstmt.setInt(5,checking.getScore());		pstmt.setString(6,checking.getPhone());		pstmt.setInt(7,checking.getId());		if(pstmt.executeUpdate()>0){
			this.close();
			return true;
		}else{
			this.close();
			return false;
		}
	}
	public Checking selectOne(int id,Connection conn) throws Exception{
		String sql = "select * from checking where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,id);		rs = pstmt.executeQuery();
		Checking checking = new Checking();
		if(rs.next()){
			checking.setName(rs.getString("name"));
			checking.setSex(rs.getString("sex"));
			checking.setClassId(rs.getString("classId"));
			checking.setDate(rs.getString("date"));
			checking.setScore(rs.getInt("score"));
			checking.setPhone(rs.getString("phone"));
			checking.setId(rs.getInt("id"));
		}
		this.close();
		return checking;
	}
	public List<Checking> select(Connection conn) throws Exception{
		List<Checking> checkings = new ArrayList<Checking>();
		String sql = "select * from checking";
		

		
		sql+=" limit 0,100";
		try {
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(this.rs.next()){
				Checking checking = new Checking();
				checking.setName(rs.getString("name"));
				checking.setSex(rs.getString("sex"));
				checking.setClassId(rs.getString("classId"));
				checking.setDate(rs.getString("date"));
				checking.setScore(rs.getInt("score"));
				checking.setPhone(rs.getString("phone"));
				checking.setId(rs.getInt("id"));
				checkings.add(checking);
			} 
		}catch (Exception e) {
				e.printStackTrace();
		}finally {
			this.close();		
		}
		return checkings;

}
	public void close() throws Exception{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
	}
}