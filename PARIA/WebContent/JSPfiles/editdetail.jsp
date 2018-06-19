<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uid=request.getParameter("uid");
session.setAttribute("uid",uid);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c = DriverManager.getConnection("jdbc:mysql://localhost/paria?useUnicode=true&characterEncoding=utf-8", "root", "root");
	Statement s=c.createStatement();
	ResultSet r=s.executeQuery("select * from details where uid='"+uid+"' ");
	r.next();


%>
	<center>
		<h2 style="font-family: Harikrishna">વિદ્યાર્થી દાખલ માહિતી</h2>
		<form action="<%=request.getContextPath()%>/studentedit"
			method="get"  accept-charset="UTF-8">
			<table>
				<tr>
					<td>UID NO</td>
					<td>:<input type="text" name="uid" value="<%=r.getString("uid")%>"></td>
				</tr>
				<tr>
					<td>વયપત્રક નં</td>
					<td>:<input type="text" name="regno" value="<%=r.getString("regno")%>"></td>
				</tr>
				<tr>
					<td>લિંગ</td>
					<td>:<input type="radio" name="gender" value="કુમાર">&nbspકુમાર
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="radio" name="gender" value="કન્યા">&nbspકન્યા</td>
				</tr>
				<tr>
					<td>વિદ્યાર્થી નું નામ</td>
					<td>:<input type="text" name="stdname" value="<%=r.getString("lastname")+" "+r.getString("firstname")+" "+r.getString("fathername")%>"></td>
				</tr>


				<tr>
					<td>ધર્મ</td>
					<td>:<select name="religion">
							<option selected>હિંદુ</option>
							<option>ઇસ્લામ</option>
							<option>ખ્રિસ્તી</option>
					</select></td>
				</tr>

				<tr>
					<td>જાતિ</td>
					<td>:<input type="text" name="subreligion" value="<%=r.getString("subreligion")%>"></td>
				</tr>
				<tr>
					<td>જાતિનો પ્રકાર</td>
					<td><select name="cast">
							<option>અન્ય</option>
							<option>બક્ષીપંચ</option>
							<option>અ.જા.</option>
							<option selected>અ.જ.જ.</option>
					</select></td>
				</tr>

				<tr>
					<td>જન્મ તારીખ</td>
					<td>:<input type="date" name="birthdate" value="<%=r.getString("birthdate") %>"></td>
				</tr>
				<tr>
					<td>જન્મ સ્થળ</td>
					<td>:<input type="text" name="birthplace" value="<%=r.getString("birthplace")%>"></td>
				</tr>
				<tr>
					<td>છેલ્લી શાળા</td>
					<td>:<input type="text" name="lastschool" value="<%=r.getString("lastschool") %>"></td>
				</tr>
				<tr>
					<td>દાખલ તારીખ</td>
					<td>:<input type="date" name="admissiondate" value="<%=r.getString("admissiondate") %>"></td>
				</tr>
				<tr>
					<td>પ્રવેશ ધોરણ</td>
					<td>:<input type="text" name="admissionstd" value="<%=r.getString("admissiondate") %>"></td>
				</tr>
				<tr>
					<td>હાલ કયા ધોરણ માં?</td>
					<td>:<input type="text" name="currentstd" value="<%=r.getString("currentstd")%>"></td>
				</tr>
				<tr>
					<td>ક્યારથી?</td>
					<td>:<input type="date" name="since" value="<%=r.getString("since")%>"></td>
				</tr>
				<tr>
					<td>શાળા છોડયા તા.</td>
					<td>:<input type="date" name="leavingdate" value="<%=r.getString("leavingdate")%>"></td>
				</tr>
				<tr>
					<td>કુલ હાજરી</td>
					<td>:<input type="text" name="attendance" value="<%=r.getString("totalattendance")%>"></td>
				</tr>
				<tr>
					<td>છોડ્યા નું કારણ</td>
					<td>:<input type="text" name="reason" value="<%=r.getString("leavingreason")%>"></td>
				</tr>
				<tr>
					<td>અભ્યાસ /પ્રગતિ</td>
					<td>:<input type="text" name="study" value="<%=r.getString("study_growth")%>"></td>
				</tr>
				<tr>
					<td>વર્તણુક</td>
					<td>:<input type="text" name="behavior" value="<%=r.getString("behavior")%>"></td>
				</tr>
				<tr>
					<td>વિશેષ નોંધ</td>
					<td>:<input type="text" name="note" value="<%=r.getString("note")%>"></td>
				</tr>
				<tr>
					<td>આધાર નં.</td>
					<td>:<input type="text" name="adharno" value="<%=r.getString("adharno")%>"></td>
				</tr>
				<tr>
					<td>બેંક ખાતા નં</td>
					<td>:<input type="text" name="acno" value="<%=r.getString("Bankacno")%>"></td>
				</tr>
				<tr>
					<td>IFSC કોડ</td>
					<td>:<input type="text" name="ifsc" value="<%=r.getString("IFSCcode")%>"></td>
				</tr>
				<tr>
					<td>બેંક શાખા</td>
					<td>:<input type="text" name="branch" value="<%=r.getString("Branch")%>"></td>
				</tr>
				<tr>
					<td>મોબાઈલ નં (વાલી)</td>
					<td>:<input type="text" name="contact" value="<%=r.getString("Contact")%>"></td>
				</tr>
			</table>
			<input type="submit">
		</form>
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