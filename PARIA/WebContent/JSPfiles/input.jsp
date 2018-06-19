<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Enter details</title>
</head>
<body>
	<center>
		<h2 style="font-family: Harikrishna">વિદ્યાર્થી દાખલ માહિતી</h2>
		<form action="<%=request.getContextPath()%>/studentsubmit"
			method="get"  accept-charset="UTF-8">
			<table>
				<tr>
					<td>UID NO</td>
					<td>:<input type="text" name="uid"></td>
				</tr>
				<tr>
					<td>વયપત્રક નં</td>
					<td>:<input type="text" name="regno"></td>
				</tr>
				<tr>
					<td>લિંગ</td>
					<td>:<input type="radio" name="gender" value="male">&nbspકુમાર
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="radio" name="gender" value="female">&nbspકન્યા</td>
				</tr>
				<tr>
					<td>વિદ્યાર્થી નું નામ</td>
					<td>:<input type="text" name="stdname"
						placeholder="અટક વિદ્યાર્થી  પિતાનું નામ"></td>
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
					<td>:<input type="text" name="subreligion"></td>
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
					<td>:<input type="date" name="birthdate"></td>
				</tr>
				<tr>
					<td>જન્મ સ્થળ</td>
					<td>:<input type="text" name="birthplace"></td>
				</tr>
				<tr>
					<td>છેલ્લી શાળા</td>
					<td>:<input type="text" name="lastschool"></td>
				</tr>
				<tr>
					<td>દાખલ તારીખ</td>
					<td>:<input type="date" name="admissiondate"></td>
				</tr>
				<tr>
					<td>પ્રવેશ ધોરણ</td>
					<td>:<input type="text" name="admissionstd"></td>
				</tr>
				<tr>
					<td>હાલ કયા ધોરણ માં?</td>
					<td>:<input type="text" name="currentstd"></td>
				</tr>
				<tr>
					<td>ક્યારથી?</td>
					<td>:<input type="date" name="since"></td>
				</tr>
				<tr>
					<td>શાળા છોડયા તા.</td>
					<td>:<input type="date" name="leavingdate"></td>
				</tr>
				<tr>
					<td>કુલ હાજરી</td>
					<td>:<input type="text" name="attendance"></td>
				</tr>
				<tr>
					<td>છોડ્યા નું કારણ</td>
					<td>:<input type="text" name="reason"></td>
				</tr>
				<tr>
					<td>અભ્યાસ /પ્રગતિ</td>
					<td>:<input type="text" name="study"></td>
				</tr>
				<tr>
					<td>વર્તણુક</td>
					<td>:<input type="text" name="behavior"></td>
				</tr>
				<tr>
					<td>વિશેષ નોંધ</td>
					<td>:<input type="text" name="note"></td>
				</tr>
				<tr>
					<td>આધાર નં.</td>
					<td>:<input type="text" name="adharno"></td>
				</tr>
				<tr>
					<td>બેંક ખાતા નં</td>
					<td>:<input type="text" name="acno"></td>
				</tr>
				<tr>
					<td>IFSC કોડ</td>
					<td>:<input type="text" name="ifsc"></td>
				</tr>
				<tr>
					<td>બેંક શાખા</td>
					<td>:<input type="text" name="branch"></td>
				</tr>
				<tr>
					<td>મોબાઈલ નં (વાલી)</td>
					<td>:<input type="text" name="contact"></td>
				</tr>
			</table>
			<input type="submit">
		</form>
	</center>
</body>
</html>