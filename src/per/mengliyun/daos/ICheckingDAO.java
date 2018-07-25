package per.mengliyun.daos;
import per.mengliyun.entitys.Checking;
import java.util.*;
import java.sql.*;
public interface ICheckingDAO{
	public boolean insert(Checking checking,Connection conn) throws Exception;
	public boolean delete(int id,Connection conn) throws Exception;
	public boolean update(Checking checking,Connection conn) throws Exception;
	public Checking selectOne(int id,Connection conn) throws Exception;
	public List<Checking> select(Connection conn) throws Exception;
	public void close() throws Exception;
}