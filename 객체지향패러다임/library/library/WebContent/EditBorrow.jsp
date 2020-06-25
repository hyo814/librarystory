<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD>
        <TITLE>상품 정보 관리</TITLE>
    </HEAD>
    <BODY>
        <H1>대여된 책을 확인하세요</H1>
        <FORM ACTION=lib-borrow METHOD=POST>
       ID: <INPUT TYPE=TEXT NAME=id SIZE=5 VALUE='${ID}' READONLY=TRUE> <BR>
            이름: <INPUT TYPE=TEXT NAME=name SIZE=50 VALUE='${NAME}'> <BR>
            저자: <INPUT TYPE=TEXT NAME=writer SIZE=50 VALUE='${WRITER}'> <BR>
            가격: <INPUT TYPE=TEXT NAME=price SIZE=20 VALUE='${PRICE}'>원 <BR>
            대여가능: <INPUT TYPE=TEXT NAME=lend SIZE=8 VALUE='${LEND}'> <BR>
            대여횟수: <INPUT TYPE=TEXT NAME=number SIZE=50 VALUE='${NUMBER}'> <BR>
       <input type="submit" value='확인'>
        </FORM>
    </BODY>
</HTML>
