<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<H1> ���� Ȱ�� �Խ��� ��� ����</H1>
<TABLE border=1>
    <TR>
        <TD width=40>����</TD>
        <TD width=300>����</TD>
        <TD width=80>�ۼ���</TD>
        <TD width=90>�ۼ�����</TD>
        <TD width=70>�ۼ��ð�</TD>
    </TR>
    <c:forEach var="cnt" begin="0" end="${LIB_LIST.listSize - 1}"> 
        <TR>
            <TD>${LIB_LIST.seqNo[cnt]}</TD>
            <TD>${LIB_LIST.title[cnt]}</TD>
            <TD>${LIB_LIST.writer[cnt]}</TD>
            <TD>${LIB_LIST.date[cnt]}</TD>
            <TD>${LIB_LIST.time[cnt]}</TD>
        </TR>
    </c:forEach> 
</TABLE>
<c:if test="${!LIB_LIST.lastPage}"> 
    <A href='lib-help?LAST_SEQ_NO=${LIB_LIST.seqNo[
        LIB_LIST.listSize - 1]}'>���� ������</A>
</c:if>
</body>
</html>