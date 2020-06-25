<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html;charset=euc-kr">
        <TITLE>회원가입</TITLE>
    </HEAD>
    <BODY>
        <H1>회원 정보를 입력하세요.</H1>
        <FORM ACTION="Librarystory.jsp?BODY_PATH=Check.jsp" METHOD=POST>
            	이름: <INPUT TYPE=TEXT NAME=name SIZE=10> <BR>
            	이메일: <INPUT TYPE=TEXT NAME=id SIZE=100> <BR>
            	<INPUT TYPE=SUBMIT VALUE='확인'>
            	<INPUT TYPE=RESET VALUE='취소'>
        </FORM>
    </BODY>
</HTML>
