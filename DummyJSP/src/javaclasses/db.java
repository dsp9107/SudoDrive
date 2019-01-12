package javaclasses;
import java.sql.*;
import java.util.Scanner;

public class db
{
	db_metadata dbmd=new db_metadata();
	static Scanner s=new Scanner(System.in);
	
	public static void log(String msg)
	{
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		System.out.println(timestamp + " : " + msg);
	}
	
	public static Connection connect()
	{
		try
		{
			db_metadata dbmd=new db_metadata();
			Class.forName(dbmd.driver);
			Connection con=DriverManager.getConnection(dbmd.connectionname,dbmd.username,dbmd.password);
			if(con != null)
			{
				log("Connected To The DataBase");
			}
			else
			{
				log("Couldn't Connect To The DataBase");
			}
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	private void displayUsers(Connection c)
	{
		try
		{
			Statement s=c.createStatement();
			ResultSet r=s.executeQuery("select * from passwords;");
			ResultSetMetaData rmd= r.getMetaData();
			System.out.println(rmd.getColumnName(1) + "\t" + rmd.getColumnName(2));
			while(r.next())
			{
				System.out.println(r.getString("uname") + "\t" + r.getString("pass"));
			}
			c.close();
			System.out.println("Disconnected");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public int student_register(String name, int age, java.sql.Date dob, String email)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("insert into student_personal_details(name,age,dob,email) values('"+name+"',"+age+",'"+dob+"','"+email+"');");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : "+x+" Rows Affected");
			c.close();
			log("Disconnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int student_enroll(String uname, String pass)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("insert into student_credentials(username,password) values('"+uname+"',SHA('"+pass+"'));");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : User Added : "+uname);
			c.close();
			log("Disconnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int student_authenticate(String u, String p)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			ResultSet r=s.executeQuery("select username from student_credentials where username='" + u + "' and password=SHA('" + p + "');");
			log("Query Executed");
			if(r.next())
			{
				status=1;
			}
			c.close();
			log("Disonnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int student_reset(String u, String p)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("update student_credentials set password=SHA('" + p + "') where username='" + u + "';");
			log("Query Executed");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : "+x+" Rows Affected");
			c.close();
			log("Disonnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int company_register(String name, String address, String handler)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("insert into company_business_details(name,address,handler) values('"+name+"','"+address+"','"+handler+"');");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : "+x+" Rows Affected");
			c.close();
			log("Disconnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int company_enroll(String email, String password)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("insert into company_credentials(email,password) values('"+email+"',SHA('"+password+"'));");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : Handler Added : "+email);
			c.close();
			log("Disconnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int company_authenticate(String e, String p)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			ResultSet r=s.executeQuery("select email from company_credentials where email='" + e + "' and password=SHA('" + p + "');");
			log("Query Executed");
			if(r.next())
			{
				status=1;
			}
			c.close();
			log("Disonnected From The DataBase");
		}
		catch(SQLException al)
		{
			al.printStackTrace();
		}
		return status;
	}
	
	public int company_addvacancy(String field, String role, float salary)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("insert into company_current_vacancies(field,role,salary) values('"+field+"','"+role+"',"+salary+");");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : "+x+" Rows Affected");
			c.close();
			log("Disconnected From The DataBase");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public int company_reset(String e, String p)
	{
		Connection c=connect();
		int status=0;
		try
		{
			Statement s=c.createStatement();
			int x=s.executeUpdate("update company_credentials set password=SHA('" + p + "') where email='" + e + "';");
			log("Query Executed");
			if(x>0)
			{
				status=1;
			}
			log("Table Updated : "+x+" Rows Affected");
			c.close();
			log("Disonnected From The DataBase");
		}
		catch(SQLException al)
		{
			al.printStackTrace();
		}
		return status;
	}
	
	
	
	private static void main(String args[])
	{
		Scanner s=new Scanner(System.in);
		System.out.println("1 : Display Users\n2 : Exit");
		System.out.println("Choice : ");
		int c=s.nextInt();
		s.nextLine();
		db d=new db();
		if(c==1)
		{
			d.displayUsers(connect());
		}
		else if(c==2)
		{
			System.out.println("Terminating");
			System.exit(0);
		}
		else if(c==3)
		{
			db daba=new db();
			System.out.println("UserName : ");
			String u=s.nextLine();
			System.out.println("Password  : ");
			String p=s.nextLine();
			System.out.println(daba.student_authenticate(u,p));
		}
		s.close();
	}
}











/*if(crypt.getMd5(p).equals(r.getString(1)))
{
	System.out.println("Authenticated !");
}
else
{
	System.out.println("Invalid Password !");
}*/