<%@page contentType="text/html; charset=euc-kr" %>
<FORM ACTION=new-login METHOD=POST 
         onSubmit="CURRENT_URL.value = window.location.href">
    아이디: <INPUT TYPE=TEXT NAME=ID SIZE=12> <BR>
    패스워드: <INPUT TYPE=PASSWORD NAME=PASSWORD SIZE=12> <BR>
    <INPUT TYPE=HIDDEN NAME=CURRENT_URL>
    <INPUT TYPE=SUBMIT VALUE='로그인'> <BR>
</FORM>
