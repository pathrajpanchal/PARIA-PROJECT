package serv;

import java.sql.*;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class studentsubmit
 */
@WebServlet("/studentsubmit")
public class studentsubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public studentsubmit() {
		super();
		// TODO Auto-generated constructor stub
		// System.out.println("u got t");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// request.getContentType("")
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String regno = request.getParameter("regno");
		String gender = request.getParameter("gender");
		String stdname = request.getParameter("stdname");
		String stdnamep[];
		stdnamep = stdname.split(" ");
		//System.out.println(stdnamep[0] + "   " + stdnamep[1] + "    "
			//	+ stdnamep[2]);
		/*
		 * stdnamep[0]=surname stdnamep[1]=name stdnamep[2]=father's name
		 */
		String religion = request.getParameter("religion");
		String subreligion = request.getParameter("subreligion");
		String cast = request.getParameter("cast");
		String birthdate = request.getParameter("birthdate");
		String birthplace = request.getParameter("birthplace");
		String lastschool = request.getParameter("lastschool");
		String admissiondate = request.getParameter("admissiondate");
		String admissionstd = request.getParameter("admissionstd");
		String currentstd = request.getParameter("currentstd");
		String since = request.getParameter("since");
		String leavingdate = request.getParameter("leavingdate");
		String attendance = request.getParameter("attendance");
		String reason = request.getParameter("reason");
		String study = request.getParameter("study");
		String behavior = request.getParameter("behavior");
		String note = request.getParameter("note");
		String adharno = request.getParameter("adharno");
		String acno = request.getParameter("acno");
		String ifsc = request.getParameter("ifsc");
		String branch = request.getParameter("branch");
		String contact = request.getParameter("contact");
		System.out.println("fetched successfully");// data fetched succesfully
		//System.out.println(religion);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(
					"jdbc:mysql://localhost/paria?useUnicode=true&characterEncoding=utf-8", "root", "test");
			/*Statement s=c.createStatement();
			s.executeUpdate("insert into details (uid,firstname) values ('"+uid+"','"+stdnamep[1]+"') ");*/
			PreparedStatement st = c.prepareStatement("insert into details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1, uid);
			st.setString(2, stdnamep[1]);
			st.setString(3, stdnamep[2]);
			st.setString(4, stdnamep[0]);
			st.setString(5, religion);
			st.setString(6, subreligion);
			st.setString(7, cast);
			st.setString(8, birthplace);
			st.setString(9, birthdate);
			st.setString(10, lastschool);
			st.setString(11, admissiondate);
			st.setString(12, admissionstd);
			st.setString(13, currentstd);
			st.setString(14, since);
			;
			st.setString(15, leavingdate);
			st.setString(16, attendance);
			st.setString(17, reason);
			st.setString(18, study);
			st.setString(19, behavior);
			st.setString(20, note);
			st.setString(21, gender);
			st.setString(22, adharno);
			st.setString(23, acno);
			st.setString(24, ifsc);
			st.setString(25, branch);
			st.setString(26, contact);
			st.setString(27, regno);
			System.out.println("statement prepared sucessfully");
			//System.out.println(st);
			st.executeUpdate();
			System.out.println("entry added for : "+stdnamep[1]);
			//System.out.println(tentry + "th entry sucessfull");
			c.close();
			response.sendRedirect("JSPfiles/entrygood.jsp");
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("JSPfiles/input.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
