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
                    	회원가입을 원하시나요? <input type="submit" value="회원가입" />
                    </form><br>
                    <a href="lib-home">홈</a><BR>
                    <a href="lib-list">목록</a><BR>
            		<a href="lib-standard">대여량 기준 정렬</a><BR>
            		<a href="lib-rental">대여된 책</a><BR>
            		<a href="lib-ablebook">대여가능한 책</a><BR>
            		<a href="Librarystory.jsp?BODY_PATH=Borrow.jsp">대여</a><BR>
            		<a href="lib-return">반납</a><BR>
            		<a href="Librarystory.jsp?BODY_PATH=Add.jsp">추가</a><BR>
            		<a href="lib-help">도서 봉사활동 게시판</a><br><br>
            		
                </TD>
                <TD valign=top width=800 height=400>
                    <jsp:include page="${param.BODY_PATH}" />
                </TD>
            </TR>
        </TABLE>
    </BODY>
</HTML>