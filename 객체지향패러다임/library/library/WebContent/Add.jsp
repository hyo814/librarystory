<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head></head><title>Library-Add</title>
</head>
<body>
<h1>추가</h1>
<FORM ACTION=lib-add METHOD=get>
<table border="1">
	<tr>
	    <td>ID</td>
	    <td><INPUT TYPE=TEXT NAME=id SIZE=10></td>
	</tr>
	<tr>
	    <td>이름</td>
	    <td><INPUT TYPE=TEXT NAME=name SIZE=10></td>
	</tr>
	 <tr>
	    <td>저자</td>
	    <td><INPUT TYPE=TEXT NAME=writer SIZE=10></td>
	 </tr>
	 <tr>
	    <td>가격</td>
	    <td><INPUT TYPE=TEXT NAME=price SIZE=10> </td>
	 </tr>
</table>

<INPUT TYPE=SUBMIT VALUE='저장'>
</FORM>
</body>
</html>