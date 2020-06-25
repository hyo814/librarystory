<%@page contentType="text/html; charset=euc-kr" %>
<FORM ACTION=new-logout METHOD=GET 
         onSubmit="CURRENT_URL.value = window.location.href">
    æ»≥Á«œººø‰, ${sessionScope.LOGIN_ID}¥‘ <BR>
    <INPUT TYPE=HIDDEN NAME=CURRENT_URL>
    <INPUT TYPE=SUBMIT VALUE='∑Œ±◊æ∆øÙ'> <BR>
</FORM>
