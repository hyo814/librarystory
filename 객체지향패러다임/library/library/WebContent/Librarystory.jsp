<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD>
        <TITLE>LIBRARY</TITLE>
    </HEAD>
    <BODY>
                 <TABLE border=1 cellpadding=10>
            <TR>
                <TD width=200 valign=top>
                    <c:choose> 
                        <c:when test="${sessionScope.LOGIN_ID == null}">
                            <jsp:include page="LoginWindow.jsp" />
                        </c:when>
                        <c:otherwise>
                            <jsp:include page="LogoutWindow.jsp" />
                        </c:otherwise>
                    </c:choose><br>
                    <form action="Librarystory.jsp?BODY_PATH=SubscriptionForm.jsp" method="post">
                    	ȸ�������� ���Ͻó���? <input type="submit" value="ȸ������" />
                    </form><br>
                    <a href="lib-home">Ȩ</a><BR>
                    <a href="lib-list">���</a><BR>
            		<a href="lib-standard">�뿩�� ���� ����</a><BR>
            		<a href="lib-rental">�뿩�� å</a><BR>
            		<a href="lib-ablebook">�뿩������ å</a><BR>
            		<a href="Librarystory.jsp?BODY_PATH=Borrow.jsp">�뿩</a><BR>
            		<a href="lib-return">�ݳ�</a><BR>
            		<a href="Librarystory.jsp?BODY_PATH=Add.jsp">�߰�</a><BR>
            		<a href="lib-help">���� ����Ȱ�� �Խ���</a><br><br>
            		
                </TD>
                <TD valign=top width=800 height=400>
                    <jsp:include page="${param.BODY_PATH}" />
                </TD>
            </TR>
        </TABLE>
    </BODY>
</HTML>