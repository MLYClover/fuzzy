package per.mengliyun.entitys;
public class User{
	private Integer id;
	public void setId(Integer id){
		this.id=id;
	}
	public Integer getId(){
		return this.id;
	}
	private String name;
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return this.name;
	}
	private String sex;
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getSex(){
		return this.sex;
	}
	private String classId;
	public void setClassId(String classId){
		this.classId=classId;
	}
	public String getClassId(){
		return this.classId;
	}
	private Integer money;
	public void setMoney(Integer money){
		this.money=money;
	}
	public Integer getMoney(){
		return this.money;
	}
	private String phone;
	public void setPhone(String phone){
		this.phone=phone;
	}
	public String getPhone(){
		return this.phone;
	}
}