<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http//www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Showing details...</title>
</head>
<body>
	<%
String uid=request.getParameter("uid");
	
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c = DriverManager.getConnection("jdbc:mysql://localhost/paria?useUnicode=true&characterEncoding=utf-8", "root", "root");
	System.out.println("database connected");
	Statement s=c.createStatement();
	ResultSet r=s.executeQuery("select * from details where uid='"+uid+"' ");
	r.next();
	System.out.println("uid accepted..");
%>
	<center>
		<table border="1">
			<tr>
				<td>UID NO</td>
				<td><%out.print(r.getString("uid"));%></td>
			</tr>
			<tr>
				<td>વયપત્રક નં</td>
				<td><%out.print(r.getString("regno"));%></td>
			</tr>
			<tr>
				<td>લિંગ</td>
				<td><%out.print(r.getString("gender"));%></td>

			</tr>
			<tr>
				<td>વિદ્યાર્થી નું નામ</td>
				<td>
					<%out.print(r.getString("lastname")+" "+r.getString("firstname")+" "+r.getString("fathername"));%>
				</td>
			</tr>


			<tr>
				<td>ધર્મ</td>
				<td>
					<%out.print(r.getString("religion"));%>
				</td>
			</tr>

			<tr>
				<td>જાતિ</td>
				<td>
					<%out.print(r.getString("subreligion"));%>
				</td>
			</tr>
			<tr>
				<td>જાતિનો પ્રકાર</td>
				<td>
					<%out.print(r.getString("cast_"));%>
				</td>
			</tr>

			<tr>
				<td>જન્મ તારીખ</td>
				<td>
					<%out.print(r.getString("birthdate"));%>
				</td>
			</tr>
			<tr>
				<td>જન્મ સ્થળ</td>
				<td><%out.print(r.getString("birthplace"));%></td>
			</tr>
			<tr>
				<td>છેલ્લી શાળા</td>
				<td><%out.print(r.getString("lastschool"));%></td>
			</tr>
			<tr>
				<td>દાખલ તારીખ</td>
				<td><%out.print(r.getString("admissiondate"));%></td>
			</tr>
			<tr>
				<td>પ્રવેશ ધોરણ</td>
				<td><%out.print(r.getString("admissionstd"));%></td>
			</tr>
			<tr>
				<td>હાલ કયા ધોરણ માં?</td>
				<td><%out.print(r.getString("currentstd"));%></td>
			</tr>
			<tr>
				<td>ક્યારથી?</td>
				<td><%out.print(r.getString("since"));%></td>
			</tr>
			<tr>
				<td>શાળા છોડયા તા.</td>
				<td><%out.print(r.getString("leavingdate"));%></td>
			</tr>
			<tr>
				<td>કુલ હાજરી</td>
				<td><%out.print(r.getString("totalattendance"));%></td>
			</tr>
			<tr>
				<td>છોડ્યા નું કારણ</td>
				<td><%out.print(r.getString("leavingreason"));%></td>
			</tr>
			<tr>
				<td>અભ્યાસ /પ્રગતિ</td>
				<td><%out.print(r.getString("study_growth"));%></td>
			</tr>
			<tr>
				<td>વર્તણુક</td>
				<td><%out.print(r.getString("behavior"));%></td>
			</tr>
			<tr>
				<td>વિશેષ નોંધ</td>
				<td><%out.print(r.getString("note"));%></td>
			</tr>
			<tr>
				<td>આધાર નં.</td>
				<td><%out.print(r.getString("adharno"));%></td>
			</tr>
			<tr>
				<td>બેંક ખાતા નં</td>
				<td><%out.print(r.getString("Bankacno"));%></td>
			</tr>
			<tr>
				<td>IFSC કોડ</td>
				<td><%out.print(r.getString("IFSCcode"));%></td>
			</tr>
			<tr>
				<td>બેંક શાખા</td>
				<td><%out.print(r.getString("Branch"));%></td>
			</tr>
			<tr>
				<td>મોબાઈલ નં (વાલી)</td>
				<td><%out.print(r.getString("Contact"));%></td>
			</tr>
		</table>
	</center>






	<%
c.close();
}
catch(Exception e)
{
	
}

%>

</body>
</html>