<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD><TITLE>library-ablebook</TITLE></HEAD>
<BODY>
	<H1>�뿩 ������ å</H1>
	<TABLE border=1>
    <TR>
        <TD width=40>ID</TD>
        <TD width=300>�̸�</TD>
        <TD width=80>����</TD>
        <TD width=90>����</TD>
        <TD width=70>�뿩����</TD>
        <TD width=70>�뿩Ƚ��</TD>
    </TR>
    <c:forEach var="cnt" begin="0" end="${LISTSIZE- 1}"> 
        <TR>
            <TD>${USERLIBRARY_LIST.id[cnt]}</TD>
 			<TD>${USERLIBRARY_LIST.name[cnt]}</TD>
            <TD>${USERLIBRARY_LIST.writer[cnt]}</TD>
            <TD>${USERLIBRARY_LIST.price[cnt]}</TD>
            <TD><c:if test="${USERLIBRARY_LIST.lend[cnt]==1}">Y</c:if>
            <c:if test="${USERLIBRARY_LIST.lend[cnt]==0}">N</c:if>
            </TD>
            <TD>${USERLIBRARY_LIST.number[cnt]}</TD>
        </TR>
    </c:forEach> 
</TABLE>
</BODY>
</HTML>
