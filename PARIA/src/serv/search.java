package serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<html><head><title>results</title></head><body>");
		String src=request.getParameter("search");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost/paria?useUnicode=true&characterEncoding=utf-8", "root", "root");
			Statement s=c.createStatement();
			ResultSet r=s.executeQuery("select uid,firstname,fathername,lastname from details where uid like '%"+src+"%' ");
			out.print("<center><h2>Results</h2>");
			out.print("<table border='0'>");
			out.print("<tr><td>UID</td><td>name</td></tr>");
			
			while(r.next())
			{
				out.print("<tr><td><a href='JSPfiles/showdetail.jsp?uid="+r.getString("uid")+" '>"+ r.getString("uid")+"</td><td>"+r.getString("firstname")+" "+r.getString("fathername")+" "+r.getString("lastname")+"</td><td><a href='JSPfiles/editdetail.jsp?uid="+r.getString("uid")+" '><button type='button'>સુધારો</button></a></td></tr>");
				
			}
			out.print("</table>");
			c.close();
			
			
		}
		catch(Exception e)
		{
			
		}
		out.print("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
