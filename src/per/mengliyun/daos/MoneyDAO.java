package per.mengliyun.daos;
import per.mengliyun.entitys.Money;
import java.sql.*;
import java.util.*;
public class MoneyDAO implements IMoneyDAO{
	private PreparedStatement pstmt;
	private ResultSet rs;
	public boolean insert(Money money,Connection conn) throws Exception{
		String sql="insert into money(name,classId,date,money) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,money.getName());		pstmt.setInt(2,money.getClassId());		pstmt.setString(3,money.getDate());		pstmt.setInt(4,money.getMoney());		if(pstmt.executeUpdate()>0){
			this.close();
			return true;
		}else{
			this.close();
			return false;
		}
	}
	public boolean delete(int id,Connection conn) throws Exception{
		String sql = "delete from money where id=?";
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
	public boolean update(Money money,Connection conn) throws Exception{;
		String sql="update money set name=?,classId=?,date=?,money=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,money.getName());		pstmt.setInt(2,money.getClassId());		pstmt.setString(3,money.getDate());		pstmt.setInt(4,money.getMoney());		pstmt.setInt(5,money.getId());		if(pstmt.executeUpdate()>0){
			this.close();
			return true;
		}else{
			this.close();
			return false;
		}
	}
	public Money selectOne(int id,Connection conn) throws Exception{
		String sql = "select * from money where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,id);		rs = pstmt.executeQuery();
		Money money = new Money();
		if(rs.next()){
			money.setName(rs.getString("name"));
			money.setClassId(rs.getInt("classId"));
			money.setDate(rs.getString("date"));
			money.setMoney(rs.getInt("money"));
			money.setId(rs.getInt("id"));
		}
		this.close();
		return money;
	}
	public List<Money> select(Connection conn) throws Exception{
		String sql = "select * from money";
		pstmt = conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		List<Money> moneys = new ArrayList<Money>();
		while(rs.next()){
			Money money = new Money();
			money.setName(rs.getString("name"));
			money.setClassId(rs.getInt("classId"));
			money.setDate(rs.getString("date"));
			money.setMoney(rs.getInt("money"));
			money.setId(rs.getInt("id"));
			moneys.add(money);
		}
		this.close();
		return moneys;
	}
	public void close() throws Exception{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
	}
}