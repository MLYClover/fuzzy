package per.mengliyun.daos;
import per.mengliyun.entitys.Money;
import java.util.*;
import java.sql.*;
public interface IMoneyDAO{
	public boolean insert(Money money,Connection conn) throws Exception;
	public boolean delete(int id,Connection conn) throws Exception;
	public boolean update(Money money,Connection conn) throws Exception;
	public Money selectOne(int id,Connection conn) throws Exception;
	public List<Money> select(Connection conn) throws Exception;
	public void close() throws Exception;
}