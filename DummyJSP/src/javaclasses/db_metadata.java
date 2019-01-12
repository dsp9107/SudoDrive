package javaclasses;

public final class db_metadata
{
	public final String driver="com.mysql.jdbc.Driver";
	public final String username="root";
	public final String password="root";
	public final String dbname="credentials";
	public final String host="localhost";
	public final String port="3306";
	public final String connectionname="jdbc:mysql://"+host+":"+port+"/"+dbname;
	public static void main(String args[])
	{
		db_metadata dbmd=new db_metadata();
		System.out.println(dbmd.connectionname);
	}
}