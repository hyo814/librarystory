<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD>
        <TITLE>��ǰ ���� ����</TITLE>
    </HEAD>
    <BODY>
        <H1>�뿩�� å�� Ȯ���ϼ���</H1>
        <FORM ACTION=lib-borrow METHOD=POST>
       ID: <INPUT TYPE=TEXT NAME=id SIZE=5 VALUE='${ID}' READONLY=TRUE> <BR>
            �̸�: <INPUT TYPE=TEXT NAME=name SIZE=50 VALUE='${NAME}'> <BR>
            ����: <INPUT TYPE=TEXT NAME=writer SIZE=50 VALUE='${WRITER}'> <BR>
            ����: <INPUT TYPE=TEXT NAME=price SIZE=20 VALUE='${PRICE}'>�� <BR>
            �뿩����: <INPUT TYPE=TEXT NAME=lend SIZE=8 VALUE='${LEND}'> <BR>
            �뿩Ƚ��: <INPUT TYPE=TEXT NAME=number SIZE=50 VALUE='${NUMBER}'> <BR>
       <input type="submit" value='Ȯ��'>
        </FORM>
    </BODY>
</HTML>
