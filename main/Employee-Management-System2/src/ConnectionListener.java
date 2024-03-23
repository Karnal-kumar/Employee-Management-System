import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent evt)
	{
		ServletContext context = evt.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","Rahul7366@");
			PreparedStatement psave = cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?,?)");
			PreparedStatement pselect = cn.prepareStatement("select * from employeeinfo where eid=?");
			PreparedStatement psdelete=cn.prepareStatement("Delete from employeeinfo where eid=?");
			PreparedStatement psupdate= cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,dept=?,salary=? where eid=?");
			Statement Wholedata = cn.createStatement();
			context.setAttribute("insert",psave);
			context.setAttribute("select",pselect);
			context.setAttribute("select2", Wholedata);
			context.setAttribute("delete",psdelete);
			context.setAttribute("update",psupdate);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}
}